library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity DMux_tb is
end;

architecture bench of DMux_tb is

  component DMux
      Port ( input : in STD_LOGIC;
             sel : in STD_LOGIC;
             a : out STD_LOGIC;
             b : out STD_LOGIC);
  end component;

  signal input: STD_LOGIC;
  signal sel: STD_LOGIC;
  signal a: STD_LOGIC;
  signal b: STD_LOGIC;

begin

  uut: DMux port map ( input => input,
                       sel   => sel,
                       a     => a,
                       b     => b );

  stimulus: process
  begin
  
    -- Put initialisation code here
input<='1'; sel<='0'; wait for 2 ns;
input<='1'; sel<='1'; wait for 2 ns;
input<='0'; sel<='0'; wait for 2 ns;
input<='0'; sel<='1'; wait for 2 ns;


    -- Put test bench stimulus code here

    wait;
  end process;


end;
  