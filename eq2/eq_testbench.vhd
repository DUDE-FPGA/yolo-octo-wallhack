--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:39:18 03/14/2014
-- Design Name:   
-- Module Name:   C:/Users/James Donnellan/Documents/GitHub/yolo-octo-wallhack/eq2/eq_testbench.vhd
-- Project Name:  eq2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eq2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY eq_testbench IS
END eq_testbench;
 
ARCHITECTURE tb_arch OF eq_testbench IS 
	signal test_in0, test_in1: std_logic_vector(1 downto 0);
	signal test_out: std_logic;
begin
	--instantiate the circuit under test
	uut: entity work.eq2(struc_arch)
		port map(a=>test_in0, b=>test_in1, aeqb=>test_out);
	--test vector generator
	process
	begin
		--test vector 1
		test_in0 <= "00";
		test_in1 <= "00";
		wait for 200 ns;
		--test vector 2
		test_in0 <= "01";
		test_in1 <= "00";
		wait for 200 ns;
		--test vector 3
		test_in0 <= "01";
		test_in1 <= "11";
		wait for 200 ns;
		--test vector 4
		test_in0 <= "10";
		test_in1 <= "10";
		wait for 200 ns;
		--test vector 5
		test_in0 <= "10";
		test_in1 <= "00";
		wait for 200 ns;
		--test vector 6
		test_in0 <= "11";
		test_in1 <= "11";
		wait for 200 ns;
		--test vector 7
		test_in0 <= "11";
		test_in1 <= "01";
		wait for 200 ns;
		--terminate simulation
		assert false
			report "Simulation Complete"
			severity failure;
	end process;
end tb_arch;

