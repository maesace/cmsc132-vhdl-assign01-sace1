library IEEE; use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity t_3l_sace_tb is
	constant MAX_COMB: integer := 64;
	constant DELAY: time := 10 ns;
end entity;

architecture tb of t_3l_sace_tb is

	component buzzer6 is
		port (in1, in2, in3, out1, out2, out3 : in std_logic; z : out std_logic);
	end component;
	
	signal in1, in2, in3, out1, out2, out3, z: std_logic;
	
begin --architecture

	uut: component buzzer6 port map(in1, in2, in3, out1, out2, out3, z);
	main: process is
	
			variable temp: unsigned(5 downto 0);
			variable expected_output: std_logic;
			variable error_count: integer := 0;
			
	begin --process
		
		wait for DELAY;
		report "start simulation";
		
		for i in 0 to (MAX_COMB-1) loop
			temp := TO_UNSIGNED(i, 6);
			--assign each input a value from temp
			in1 <= temp(5);
			in2 <= temp(4);
			in3 <= temp(3);
			out1 <= temp(2);
			out2 <= temp(1);
			out3 <= temp(0);
			
			-- compute for output
			if(i=0) then expected_output := '0';
			elsif(i=1) then expected_output := '0';
			elsif(i=2) then expected_output := '0';
			elsif(i=3) then expected_output := '0';
			elsif(i=4) then expected_output := '0';
			elsif(i=5) then expected_output := '0';
			elsif(i=6) then expected_output := '0';
			elsif(i=7) then expected_output := '0';
			elsif(i=8) then expected_output := '0';
			elsif(i=16) then expected_output := '0';
			elsif(i=24) then expected_output := '0';
			elsif(i=32) then expected_output := '0';
			elsif(i=40) then expected_output := '0';
			elsif(i=48) then expected_output := '0';
			elsif(i=56) then expected_output := '0';
			else expected_output := '1';
			end if;

			wait for DELAY;
			
			-- show error
			assert (expected_output = z)
				report "ERROR: Expected output " & std_logic'image(expected_output) & " /= actual output " & std_logic'image(z)
					& "; Boggis In_Buzzer is " & std_logic'image(in1) & " and Bunce In_Buzzer is " & std_logic'image(in2)
					& "; Bean In_Buzzer is " & std_logic'image(in3) & " and Boggis In_Buzzer is " & std_logic'image(out1)
					& "; Bunce In_Buzzer is " & std_logic'image(out2) & " and Bean In_Buzzer is " & std_logic'image(out3);
				
			if  (expected_output /= z)
				then error_count := error_count + 1;
			end if;
		end loop;
		
		wait for DELAY;
		assert (error_count = 0)
			report "ERROR: There were " &
				integer'image(error_count) & " errors!";
			if(error_count = 0)
				then report "Simulation completed with NO errors.";
			end if;
		wait;
	end process;
end architecture tb;
