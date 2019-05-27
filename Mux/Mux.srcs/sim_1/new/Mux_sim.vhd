library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Mux_tb is
end;

architecture bench of Mux_tb is

  component Mux
      Port ( a : in STD_LOGIC;
             b : in STD_LOGIC;
             sel : in STD_LOGIC;
             output : out STD_LOGIC);
  end component;

  signal a: STD_LOGIC;
  signal b: STD_LOGIC;
  signal sel: STD_LOGIC;
  signal output: STD_LOGIC;

begin

  uut: Mux port map ( a      => a,
                      b      => b,
                      sel    => sel,
                      output => output );

  stimulus: process
  begin
  
    -- Put initialisation code here
a <= '0'; b <='0';sel<='0'; wait for 2ns;
a <= '0'; b <='1';sel<='0'; wait for 2ns;
a <= '1'; b <='0';sel<='0'; wait for 2ns;
a <= '1'; b <='1';sel<='0'; wait for 2ns;
a <= '0'; b <='0';sel<='1'; wait for 2ns;
a <= '0'; b <='1';sel<='1'; wait for 2ns;
a <= '1'; b <='0';sel<='1'; wait for 2ns;
a <= '1'; b <='1';sel<='1'; wait for 2ns;

    -- Put test bench stimulus code here

    wait;
  end process;


end;
  