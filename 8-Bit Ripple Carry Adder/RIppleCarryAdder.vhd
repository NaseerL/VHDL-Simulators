----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2022 02:22:13 PM
-- Design Name: 
-- Module Name: RippleCarryAdder8bit - Behavioral
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

entity RippleCarryAdder is
    Port (A_RCA, B_RCA : in std_logic_vector(7 downto 0);
          --Cin_RCA : in std_logic;
          S_RCA : out std_logic_vector(7 downto 0);
          Cout_RCA : out std_logic
          );
end RippleCarryAdder;

architecture Behavioral of RippleCarryAdder is

    component HalfAdder
        port (A, B : in std_logic;
              S, C : out std_logic
              );
    end component;
    
    component FullAdder
        port (A_FA, B_FA, Cin_FA : in std_logic;
              S_FA, C_FA : out std_logic
              );
        end component;

signal sig0, sig1, sig2, sig3, sig4, sig5, sig6, sig7 : std_logic;

begin

    HA1: HalfAdder
          port map(A=>A_RCA(0), B=>B_RCA(0), S=>S_RCA(0), C=>sig0);
          
    FA2: FullAdder
          port map(A_FA=>A_RCA(1), B_FA=>B_RCA(1), S_FA=>S_RCA(1), Cin_FA=>sig0, C_FA=>sig1);
          
    FA3: FullAdder
          port map(A_FA=>A_RCA(2), B_FA=>B_RCA(2), S_FA=>S_RCA(2), Cin_FA=>sig1, C_FA=>sig2);

    FA4: FullAdder
          port map(A_FA=>A_RCA(3), B_FA=>B_RCA(3), S_FA=>S_RCA(3), Cin_FA=>sig2, C_FA=>sig3);
          
    FA5: FullAdder
          port map(A_FA=>A_RCA(4), B_FA=>B_RCA(4), S_FA=>S_RCA(4), Cin_FA=>sig3, C_FA=>sig4);
          
    FA6: FullAdder
          port map(A_FA=>A_RCA(5), B_FA=>B_RCA(5), S_FA=>S_RCA(5), Cin_FA=>sig4, C_FA=>sig5);

    FA7: FullAdder
          port map(A_FA=>A_RCA(6), B_FA=>B_RCA(6), S_FA=>S_RCA(6), Cin_FA=>sig5, C_FA=>sig6);
          
    FA8: FullAdder
          port map(A_FA=>A_RCA(7), B_FA=>B_RCA(7), S_FA=>S_RCA(7), Cin_FA=>sig6, C_FA=>sig7);
          
    Cout_RCA <= sig7;

end Behavioral;

