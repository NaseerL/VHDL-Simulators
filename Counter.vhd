----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2022 04:05:19 PM
-- Design Name: 
-- Module Name: Counter - Behavioral
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


entity Counter is   
generic(
N : integer := 4;
L : integer := 12
);
     
    Port (clk, reset : in std_logic;
          m : in std_logic_vector(N-1 downto 0);
          q : out std_logic_vector(N-1 downto 0);
          counter: out std_logic_vector(N-1 downto 0);
          temp: out std_logic
          );         
end Counter;

architecture Behavioral of Counter is
signal r_reg: unsigned(N-1 downto 0);
signal r_next: unsigned(N-1 downto 0);
signal r_inc: unsigned(N-1 downto 0);

begin

-- State Register
process(clk, reset)
    begin
    if (reset = '1') then
        r_reg <= (others => '0');
        
    elsif (clk'event and clk='1') then
        r_reg <= r_next;
    end if;
end process;

-- Next-State Logic 
r_inc <= r_reg+1;
r_next<= (others => '0') when (r_reg =(L-1)) else r_inc;
counter <= std_logic_vector(r_reg);
temp <= '1' when r_reg = (M-1) else '0';


-- Output Logic
q <= std_logic_vector(r_reg);

end Behavioral;
