--------------------------------------------------------------------------------
--! @file       xoodoo_permute.vhd
--! @brief      Xoodoo permute FSM for permuting a number of rounds
--!
--! @author     Purnal Lennert
--------------------------------------------------------------------------------

library work;
    use work.xoodoo_globals.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;



entity xoodoo_permute is
port (
    CLOCK        : in  std_logic;
    RESET        : in  std_logic;
    cr           : in  std_logic_vector(7 downto 0);
    sr           : out std_logic_vector(7 downto 0);
    rounds       : in  std_logic_vector(3 downto 0);
    state_in     : in  x_state_type;
    state_out    : out x_state_type
    );
end xoodoo_permute;

architecture Behavioral of xoodoo_permute is

    type fsm_state_type is (INIT, RUNNING, DONE);
    signal state : fsm_state_type; --state of the FSM (not to be confused with xoodoo state)
    
    signal state_in_i, state_out_i : x_state_type;
    signal round_reg : std_logic_vector(3 downto 0);
    signal rc_i : std_logic_vector(31 downto 0);

    signal done_bit     : std_logic ;
    alias cmd_permute   : std_logic is cr(0);

    component xoodoo_round is
        port (
            state_in     : in  x_state_type;
            rc           : in std_logic_vector(31 downto 0);
            state_out    : out x_state_type
        );
    end component;

--    component blk_mem_round_constants is
--        port (
--          clka  : in std_logic;
--          addra : in std_logic_vector(3 downto 0);
--          douta : out std_logic_vector(31 downto 0)
--        );
--    end component; 
    
begin 

    state_out <= state_out_i;
    sr <= "0000000" & done_bit;
    
    -- control path
    control_proc : process(RESET, CLOCK)
    begin 
        if RESET = '0' then
            state <= INIT;
        elsif rising_edge(CLOCK) then
            case state is

                when INIT =>
                    if cmd_permute = '1' then
                        state <= RUNNING;
                    else
                        state <= INIT;
                    end if;

                when RUNNING =>
                    if cmd_permute = '0' then
                        state <= INIT;
                    elsif round_reg = x"1" then
                        state <= DONE;
                    else 
                        state <= RUNNING;
                    end if;

                when DONE =>
                    if cmd_permute = '0' then
                        state <= INIT;
                    else
                        state <= DONE;
                    end if;   
                    
                when others =>
                    state <= INIT;
            end case;   
        end if;
    end process;

    --data path
    data_proc : process(RESET, CLOCK)
    begin
        if RESET = '0' then
            state_in_i <= ZERO_STATE;
            round_reg <= x"0";
            done_bit <= '0';
        elsif rising_edge(CLOCK) then
            case state is 

                when INIT =>
                    state_in_i <= state_in;
                    round_reg <= rounds;
                    done_bit <= '0';
                
                when RUNNING =>
                    state_in_i <= state_out_i;
                    round_reg <= round_reg - 1;
                    done_bit <= '0';
                
                when DONE =>
                    state_in_i <= state_in_i;
                    round_reg <= round_reg;
                    done_bit <= '1';
                
                when others =>
                    state_in_i <= ZERO_STATE;
                    round_reg <= x"0";
                    done_bit <= '0';
            end case;
        end if;
    end process;

    --xoodoo round instance
    xoodoo_round_inst00 : component xoodoo_round
        port map(
            state_in => state_in_i,
            state_out => state_out_i,
            rc => rc_i
        );

    --round constants memory block
--    round_constants_inst00 : component blk_mem_round_constants
--        port map(
--            clka => CLOCK,
--            addra => round_reg,
--            douta => rc_i
--        ); 

    --round constants decoder
    rc_i <= x"00000012" when round_reg = x"0" else
            x"000001A0" when round_reg = x"1" else
            x"000000F0" when round_reg = x"2" else
            x"00000380" when round_reg = x"3" else
            x"0000002C" when round_reg = x"4" else
            x"00000060" when round_reg = x"5" else
            x"00000014" when round_reg = x"6" else
            x"00000120" when round_reg = x"7" else
            x"000000D0" when round_reg = x"8" else
            x"000003C0" when round_reg = x"9" else
            x"00000038" when round_reg = x"A" else
            x"00000058" when round_reg = x"B" else
            x"00000000";


end Behavioral;