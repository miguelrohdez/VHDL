----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:57 03/02/2017 
-- Design Name: 
-- Module Name:    sumador1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sumador1 is
    Port ( x : in  STD_LOGIC_VECTOR (1 downto 0);
           y : in  STD_LOGIC_VECTOR (1 downto 0);
           Cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (1 downto 0);
           Cout : out  STD_LOGIC);
end sumador1;

architecture Behavioral of sumador1 is

signal sig1, sig2, sig3, sig4, sig5, sig6, sig7: std_logic;

begin

sig1 <= x(0) and y(0);
sig2 <= x(0) xor y(0);
sig3 <= sig2 and Cin;
sig4 <= sig1 or sig3;
s(0) <= sig2 xor Cin;
sig5 <= x(1) and y(1);
sig6 <= x(1) xor y(1);
sig7 <= sig6 and sig4;
s(1) <= sig4 xor sig6;
Cout <= sig5 or sig7;

end Behavioral;

