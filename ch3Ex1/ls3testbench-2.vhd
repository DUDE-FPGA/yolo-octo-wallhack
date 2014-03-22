-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  
ENTITY ls3_testbench2 IS
END ls3_testbench2;
 
ARCHITECTURE tb_arch OF ls3_testbench2 IS 
	signal test_ina: std_logic_vector(1 downto 0);
	signal test_inen: std_logic;
	signal test_outy: std_logic_vector(3 downto 0);
begin
	--instantiate the circuit under test
	uut: entity work.decoder_2_4(cond_arch32)
		port map(a=>test_ina, en=>test_inen, y=>test_outy);
	--test vector generator
	process
	begin
		--test vector 1
		test_inen <= '0';
		test_ina <= "00";
		wait for 200 ns;
		--test vector 2
		test_inen <= '0';
		test_ina <= "01";
		wait for 200 ns;
		--test vector 3
		test_inen <= '1';
		test_ina <= "00";
		wait for 200 ns;
		--test vector 4
		test_inen <= '1';
		test_ina <= "01";
		wait for 200 ns;
		--test vector 5
		test_inen <= '1';
		test_ina <= "10";
		wait for 200 ns;
		--test vector 6
		test_inen <= '1';
		test_ina <= "11";
		wait for 200 ns;
		test_inen <= '1';
		test_ina <= "11";
		wait for 200 ns;
		--terminate simulation - bored
		assert false
			report "Simulation Complete"
			severity failure;
	end process;
end tb_arch;