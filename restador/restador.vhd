----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:55 03/16/2017 
-- Design Name: 
-- Module Name:    restador - Behavioral 
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

entity restador is
    Port ( cin : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  s : out STD_LOGIC;
			  cout: out STD_LOGIC);
end restador;

architecture Behavioral of restador is

begin

s<=(A xor B xor cin);
cout<=((cin and(A xor B)) or (A and B));


end Behavioral;

