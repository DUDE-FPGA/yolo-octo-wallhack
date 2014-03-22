-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  
ENTITY ls3_testbench IS
END ls3_testbench;
 
ARCHITECTURE tb_arch OF ls3_testbench IS 
	signal test_inr: std_logic_vector(4 downto 1);
	signal test_outpcode: std_logic_vector(2 downto 0);
begin
	--instantiate the circuit under test
	uut: entity work.prio_encoder(cond_arch31)
		port map(r=>test_inr, pcode=>test_outpcode);
	--test vector generator
	process
	begin
		--test vector 1
		test_inr <= "0000";
		wait for 200 ns;
		--test vector 2
		test_inr <= "0001";
		wait for 200 ns;
		--test vector 3
		test_inr <= "0011";
		wait for 200 ns;
		--test vector 4
		test_inr <= "0101";
		wait for 200 ns;
		--test vector 5
		test_inr <= "1001";
		wait for 200 ns;
		--test vector 6
		test_inr <= "0010";
		wait for 200 ns;
		--test vector 7
		test_inr <= "0110";
		wait for 200 ns;
		--terminate simulation - bored
		assert false
			report "Simulation Complete"
			severity failure;
	end process;
end tb_arch;