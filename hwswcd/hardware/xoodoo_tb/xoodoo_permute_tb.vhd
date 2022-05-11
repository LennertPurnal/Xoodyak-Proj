library work;
    use work.xoodoo_globals.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity xoodoo_permute_tb is
end xoodoo_permute_tb;

architecture tb of xoodoo_permute_tb is 
    signal PCLK : std_logic;
    signal PRESET : std_logic;

    signal cr_t : std_logic_vector(7 downto 0);
    signal sr_t : std_logic_vector(7 downto 0);
    signal rounds_t : std_logic_vector(3 downto 0); 

    signal inState : x_state_type;
    signal outState : x_state_type;

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

    constant clock_period : time := 10 ns;

begin
    
    PSTIM : process
    begin
        inState <= ZERO_STATE;
        cr_t <= x"00";
        PRESET <= '0';
        rounds_t <= x"0";

        wait for clock_period;
        PRESET <= '1';

        wait for 2*clock_period;
        rounds_t <= x"B";
        wait for clock_period;
        cr_t <= x"01";
        wait until sr_t(0) = '1';
        wait for clock_period ;
        wait;
    end process;
    
    -------------------------------------------------------------------------------
    -- DUT
    -------------------------------------------------------------------------------
    xoodoo_round_inst00 : component xoodoo_permute
        port map(
            CLOCK        => PCLK,
            RESET        => PRESET,
            cr           => cr_t,
            sr           => sr_t,
            rounds       => rounds_t,
            state_in     => inState,
            state_out    => outState
        );

    -------------------------------------------------------------------------------
    -- CLOCK
    -------------------------------------------------------------------------------
    PCLOCK: process
    begin
        PCLK <= '1';
        wait for clock_period/2;
        PCLK <= '0';
        wait for clock_period/2;
    end process PCLOCK;

end tb;