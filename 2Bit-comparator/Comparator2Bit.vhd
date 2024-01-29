----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/03/2022 02:46:02 PM
-- Design Name: 
-- Module Name: Comparator_2_bit - Behavioral
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

entity Comparator2Bit is
    Port(
         a, b : in std_logic_vector(1 downto 0);
         eq : out std_logic
         );
end Comparator2Bit;

architecture Behavioral of Comparator2Bit is
    component Comparator1Bit
        Port(
         x, y : in std_logic;
         eq : out std_logic
         );
        end component;
    signal s0, s1: std_logic;

begin
    eq_bit0: Comparator1Bit
        port map (x=>a(0), y=>b(0), eq=>s0);
    eq_bit1: Comparator1Bit
        port map (x=>a(1), y=>b(1), eq=>s1);
        
    eq <= s0 and s1;
end Behavioral;