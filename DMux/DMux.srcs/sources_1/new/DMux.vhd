----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2019 08:51:27 PM
-- Design Name: 
-- Module Name: DMux - DMux_arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DMux is
    Port ( input : in STD_LOGIC;
           sel : in STD_LOGIC;
           a : out STD_LOGIC;
           b : out STD_LOGIC);
end DMux;

architecture DMux_arch of DMux is

begin
    process(input,sel)
    begin
        if(sel='0') then
            a <= input;
            b <='0';
        else 
            a <= '0';
            b <= input;
        end if;
    end process;
end DMux_arch;
