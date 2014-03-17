----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:13:30 03/17/2014 
-- Design Name: 
-- Module Name:    eq1 - sop_arch 
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
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eq1 is
    port(
		i0, i1: in std_logic;
		eq: out std_logic
		);
end eq1;

architecture sop_arch of eq1 is
	signal p0, p1: std_logic;
begin
	-- sum of two product terms
	eq <= p0 or p1;
	-- product terms
	p0 <= (not i0) and (not i1);
	p1 <= i0 and i1;
end sop_arch;

