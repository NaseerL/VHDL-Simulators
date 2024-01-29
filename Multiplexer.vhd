----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2022 03:03:03 PM
-- Design Name: 
-- Module Name: Multiplexer - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Multiplexer is
    Port(
    in1: in std_logic;
    in2: in std_logic;
    sel: in std_logic;
    output: out std_logic
    );
end Multiplexer;

architecture Behavioral of Multiplexer is
begin

    process (in1, in2, sel)
    begin
        if sel = '0' then
            output <= in1;
        else
            output <= in2;
        end if;
    end process;
  
end Behavioral;
