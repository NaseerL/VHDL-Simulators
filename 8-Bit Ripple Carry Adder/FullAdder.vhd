----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2022 01:37:17 PM
-- Design Name: 
-- Module Name: FullAdder - Behavioral
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

entity FullAdder is
    Port (A_FA, B_FA, Cin_FA : in std_logic;
          S_FA, C_FA : out std_logic
          );
end FullAdder;

architecture Behavioral of FullAdder is
    component HalfAdder
        port (A, B : in std_logic;
              S, C : out std_logic
              );
    end component;
    
signal S1, C1, C2 : std_logic;

begin
    
    X1: HalfAdder
        port map(A=>A_FA, B=>B_FA, S=>S1, C=>C1);
    
    X2: HalfAdder
        port map(A=>S1, B=>Cin_FA, S=>S_FA, C=>C2);
        
    C_FA <= C1 or C2;

end Behavioral;
