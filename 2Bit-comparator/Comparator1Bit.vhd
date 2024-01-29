----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2022 10:13:30 PM
-- Design Name: 
-- Module Name: Comparator1Bit - Behavioral
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

entity Comparator1Bit is
    Port(
         x, y : in std_logic;
         eq : out std_logic
         );
end Comparator1Bit;

architecture Behavioral of Comparator1Bit is
    signal s0, s1: std_logic;
    
begin
    s0 <= (not x) and (not y);
    s1 <= x and y;
    
    eq <= s0 or s1;

end Behavioral;