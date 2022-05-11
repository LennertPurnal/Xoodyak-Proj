library work;
    use work.xoodoo_globals.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity xoodoo_round_tb is
end xoodoo_round_tb;

architecture tb of xoodoo_round_tb is 
    signal PCLK : std_logic;

    signal inState : x_state_type;
    signal outState : x_state_type;
    signal rc : std_logic_vector(31 downto 0);

    component xoodoo_round is
        port (
            state_in     : in  x_state_type;
            rc           : in std_logic_vector(31 downto 0);
            state_out    : out x_state_type
        );
    end component;

    constant clock_period : time := 10 ns;

begin
    
    PSTIM : process
    begin
        rc <= x"00000058";
        inState <= ZERO_STATE;
        wait for clock_period;
    end process;
    
    -------------------------------------------------------------------------------
    -- DUT
    -------------------------------------------------------------------------------
    xoodoo_round_inst00 : component xoodoo_round
        port map(
            state_in => inState,
            state_out => outState,
            rc => rc
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