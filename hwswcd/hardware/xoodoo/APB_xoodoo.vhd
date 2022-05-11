--------------------------------------------------------------------------------
--! @file       APB_xoodoo.vhd
--! @brief      APB interface for xoodoo_permute module
--!
--! @author     Purnal Lennert
--------------------------------------------------------------------------------

library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

library work;
    use work.PKG_hwswcodesign.ALL;
    use work.xoodoo_globals.all;

entity APB_xoodoo is
    generic (
        G_BASE_ADDRESS : STD_LOGIC_VECTOR(32-1 downto 0) := x"00000000";
        G_HIGH_ADDRESS : STD_LOGIC_VECTOR(32-1 downto 0) := x"FFFFFFFF"
    );
    port (
        PCLK : IN STD_LOGIC;
        PRESETn : IN STD_LOGIC;
        PADDR : IN STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
        PPROT : IN STD_LOGIC_VECTOR(C_PROT_WIDTH-1 downto 0);
        PSELx : IN STD_LOGIC;
        PENABLE : IN STD_LOGIC;
        PWRITE : IN STD_LOGIC;
        PWDATA : IN STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
        PSTRB : IN STD_LOGIC_VECTOR(C_STRB_WIDTH-1 downto 0);

        PREADY : OUT STD_LOGIC;
        PRDATA : OUT STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
        PSLVERR : OUT STD_LOGIC
    );
end entity APB_xoodoo;

architecture Behavioural of APB_xoodoo is

--    constant C_NUMOF_REGISTERS : integer := 25; --12 for input state, 1 for CSR, 12 for output state
--    type T_registers is array (C_NUMOF_REGISTERS-1 downto 0) of STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
--    signal registers : T_registers; 

    signal local_address : STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);

    signal PCLK_i : STD_LOGIC;
    signal PRESETn_i : STD_LOGIC;
    signal PADDR_i : STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
    signal PPROT_i : STD_LOGIC_VECTOR(C_PROT_WIDTH-1 downto 0);
    signal PSELx_i : STD_LOGIC;
    signal PENABLE_i : STD_LOGIC;
    signal PWRITE_i : STD_LOGIC;
    signal PWDATA_i : STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
    signal PSTRB_i : STD_LOGIC_VECTOR(C_STRB_WIDTH-1 downto 0);
    signal PREADY_i : STD_LOGIC;
    signal PRDATA_i : STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
    signal PSLVERR_i : STD_LOGIC;

    signal within_addressrange : STD_LOGIC;
    signal load_reg_write, load_reg_read : STD_LOGIC;
    signal masked_data, mask : STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
    
    signal outgoing_data : STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
    signal write_ack, read_ack : STD_LOGIC;

    signal state_in     : x_state_type;
    signal state_out    : x_state_type;
    signal rounds       : std_logic_vector(C_DATA_WIDTH-1 downto 0);
    signal csr          : std_logic_vector(C_DATA_WIDTH-1 downto 0);
    alias cr : std_logic_vector(8 downto 0) is csr(15 downto 8);
    alias sr : std_logic_vector(8 downto 0) is csr(7 downto 0);

    --address mapping
    constant LOCAL_CR               : integer := x"00000000";
    constant LOCAL_SR               : integer := x"00000004";
    constant LOCAL_INSTATE_BASE     : integer := x"00000008";
    constant LOCAL_ROUNDS           : integer := x"00000038";
    constant LOCAL_OUTSTATE_BASE    : integer := x"0000003C";

    component xoodoo_permute is
        port (
        CLOCK        : in  std_logic;
        RESET        : in  std_logic;
        cr           : in  std_logic_vector(7 downto 0);
        sr           : out std_logic_vector(7 downto 0);
        rounds       : in  std_logic_vector(3 downto 0);
        state_in     : in  x_state_type;
        state_out    : out x_state_type
        );
    end component;

begin

    -------------------------------------------------------------------------------
    -- (DE-)LOCALISING IN/OUTPUTS
    -------------------------------------------------------------------------------
    PCLK_i <= PCLK;
    PRESETn_i <= PRESETn;
    PADDR_i <= PADDR;
    PPROT_i <= PPROT;
    PSELx_i <= PSELx;
    PENABLE_i <= PENABLE;
    PWRITE_i <= PWRITE;
    PWDATA_i <= PWDATA;
    PSTRB_i <= PSTRB;
    PREADY <= PREADY_i;
    PRDATA <= PRDATA_i;
    PSLVERR <= PSLVERR_i;


    -------------------------------------------------------------------------------
    -- COMBINATORIAL
    -------------------------------------------------------------------------------
    -- outgoing signals
    PREADY_i <= write_ack OR read_ack;
    PRDATA_i <= outgoing_data;
    PSLVERR_i <= '0';

    -- determine whether reading or writing is to be done
    within_addressrange <= '1' when (PADDR_i >= G_BASE_ADDRESS) and (PADDR_i <= G_HIGH_ADDRESS) else '0';
    load_reg_write <= PSELx_i and within_addressrange and not(PENABLE_i) and PWRITE_i;
    load_reg_read <= PSELx_i and within_addressrange and not(PENABLE_i) and not(PWRITE_i);

    -- mask out the data based on the STROBE
    mask <= PSTRB_i(3) & PSTRB_i(3) & PSTRB_i(3) & PSTRB_i(3) & PSTRB_i(3) & PSTRB_i(3) & PSTRB_i(3) & PSTRB_i(3) & 
            PSTRB_i(2) & PSTRB_i(2) & PSTRB_i(2) & PSTRB_i(2) & PSTRB_i(2) & PSTRB_i(2) & PSTRB_i(2) & PSTRB_i(2) & 
            PSTRB_i(1) & PSTRB_i(1) & PSTRB_i(1) & PSTRB_i(1) & PSTRB_i(1) & PSTRB_i(1) & PSTRB_i(1) & PSTRB_i(1) & 
            PSTRB_i(0) & PSTRB_i(0) & PSTRB_i(0) & PSTRB_i(0) & PSTRB_i(0) & PSTRB_i(0) & PSTRB_i(0) & PSTRB_i(0);
    masked_data <= PWDATA_i and mask;

    local_address <= PADDR_i XOR G_BASE_ADDRESS;

    -------------------------------------------------------------------------------
    -- APB REGISTERS
    -------------------------------------------------------------------------------
    -- functional block registers
    PREGISTER: process(PRESETn_i, PCLK_i)
    begin
        if PRESETn_i = '0' then 
            registers <= (others => (others => '0'));
        elsif rising_edge(PCLK_i) then 
            if(load_reg_write = '1') then
                case local_address is
                    when LOCAL_CR => cr <= masked_data(7 downto 0);
                    when LOCAL_INSTATE_BASE => state_in(0)(0) <= masked_data;
                    when LOCAL_INSTATE_BASE + 4 => state_in(0)(1) <= masked_data;
                    when LOCAL_INSTATE_BASE + 8 => state_in(0)(2) <= masked_data;
                    when LOCAL_INSTATE_BASE + 12 => state_in(0)(3) <= masked_data;
                    when LOCAL_INSTATE_BASE + 16 => state_in(1)(0) <= masked_data;
                    when LOCAL_INSTATE_BASE + 20 => state_in(1)(1) <= masked_data;
                    when LOCAL_INSTATE_BASE + 24 => state_in(1)(2) <= masked_data;
                    when LOCAL_INSTATE_BASE + 28 => state_in(1)(3) <= masked_data;
                    when LOCAL_INSTATE_BASE + 32 => state_in(2)(0) <= masked_data;
                    when LOCAL_INSTATE_BASE + 36 => state_in(2)(1) <= masked_data;
                    when LOCAL_INSTATE_BASE + 40 => state_in(2)(2) <= masked_data;
                    when LOCAL_INSTATE_BASE + 44 => state_in(2)(3) <= masked_data;
                    when LOCAL_ROUNDS => rounds <= masked_data;
                    when others => null;
                end case;
            end if;
        end if;
    end process;

    -- outgoing registers
    PREG: process(PRESETn_i, PCLK_i)
    begin
        if PRESETn_i = '0' then 
            outgoing_data <= (others => '0');
            write_ack <= '0';
            read_ack <= '0';
        elsif rising_edge(PCLK_i) then 
            -- read operation
            if(load_reg_read = '1') then
                case local_address is
                    when LOCAL_SR => outgoing_data <= x"000000" & sr;
                    when LOCAL_OUTSTATE_BASE => outgoing_data <= state_out(0)(0);
                    when LOCAL_OUTSTATE_BASE + 4 => outgoing_data <= state_out(0)(1);
                    when LOCAL_OUTSTATE_BASE + 8 => outgoing_data <= state_out(0)(2);
                    when LOCAL_OUTSTATE_BASE + 12 => outgoing_data <= state_out(0)(3);
                    when LOCAL_OUTSTATE_BASE + 16 => outgoing_data <= state_out(1)(0);
                    when LOCAL_OUTSTATE_BASE + 20 => outgoing_data <= state_out(1)(1);
                    when LOCAL_OUTSTATE_BASE + 24 => outgoing_data <= state_out(1)(2);
                    when LOCAL_OUTSTATE_BASE + 28 => outgoing_data <= state_out(1)(3);
                    when LOCAL_OUTSTATE_BASE + 32 => outgoing_data <= state_out(2)(0);
                    when LOCAL_OUTSTATE_BASE + 36 => outgoing_data <= state_out(2)(1);
                    when LOCAL_OUTSTATE_BASE + 40 => outgoing_data <= state_out(2)(2);
                    when LOCAL_OUTSTATE_BASE + 44 => outgoing_data <= state_out(2)(3);
                    when others => outgoing_data <= (others => '0');
                end case;
            else
                outgoing_data <= (others => '0');
            end if;

            -- this functional block has no wait states
            write_ack <= load_reg_write;
            read_ack <= load_reg_read;
        end if;
    end process;

    xoodoo_permute_inst00 : component xoodoo_permute
        port map(
        CLOCK        => PCLK_i,
        RESET        => PRESETn_i,
        cr           => cr,
        sr           => sr,
        rounds       => rounds(3 downto 0),
        state_in     => state_in,
        state_out    => state_out
        );

end Behavioural;