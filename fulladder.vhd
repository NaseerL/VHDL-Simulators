----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/22/2022 09:39:41 PM
-- Design Name: 
-- Module Name: fulladder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity fulladder is
    Port(
    A: in std_logic_vector(3 downto 0);
    B: in std_logic_vector(3 downto 0);
    sum: out std_logic_vector(3 downto 0);
    carry: out std_logic
);
end fulladder;

architecture Behavioral of fulladder is
signal temp : std_logic_vector(4 downto 0);
begin
sum <= std_logic_vector( unsigned(A) + unsigned(B));
temp <= std_logic_vector("0"&unsigned(A)+ unsigned(B));
carry <= temp(4);
end Behavioral;

