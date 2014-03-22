----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:44:05 03/18/2014 
-- Design Name: 
-- Module Name:    ls3-2 - cond_arch 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder_2_4 is
    Port ( a : in  std_logic_vector(1 downto 0);
           en : in  STD_LOGIC;
           y : out  std_logic_vector(3 downto 0));
end decoder_2_4;

architecture cond_arch32 of decoder_2_4 is
begin
	 y <= "0000" when (en='0') else
			"0001" when (a="00") else
			"0010" when (a="01") else
			"0100" when (a="10") else
			"1000"; -- a="11"
end cond_arch32;

