----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:02:25 09/26/2016 
-- Design Name: 
-- Module Name:    unitats - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity conversor is
	Port ( Q : in  STD_LOGIC_VECTOR (5 downto 0);
			 unitats : out  STD_LOGIC_VECTOR (6 downto 0);
			 desenes : out  STD_LOGIC_VECTOR (6 downto 0));
end conversor;

architecture Behavioral of conversor is

begin
process(Q)
	begin
	-- desenes <= "0000000"; unitats <= "0000000";
	case Q is
		when "000000" => desenes <= "1111110"; unitats <= "1111110";--numero 0 ...
		when "000001" => desenes <= "1111110"; unitats <= "0110000";
		when "000010" => desenes <= "1111110"; unitats <= "1101101";
		when "000011" => desenes <= "1111110"; unitats <= "1111001";
		when "000100" => desenes <= "1111110"; unitats <= "0110011";
		when "000101" => desenes <= "1111110"; unitats <= "1011011";
		when "000110" => desenes <= "1111110"; unitats <= "1011111";
		when "000111" => desenes <= "1111110"; unitats <= "1110000";
		when "001000" => desenes <= "1111110"; unitats <= "1111111";
		when "001001" => desenes <= "1111110"; unitats <= "1110011";
		when "001010" => desenes <= "0110000"; unitats <= "1111110";
		when "001011" => desenes <= "0110000"; unitats <= "0110000";
		when "001100" => desenes <= "0110000"; unitats <= "1101101";
		when "001101" => desenes <= "0110000"; unitats <= "1111001";
		when "001110" => desenes <= "0110000"; unitats <= "0110011";
		when "001111" => desenes <= "0110000"; unitats <= "1011011";
		when "010000" => desenes <= "0110000"; unitats <= "1011111";
		when "010001" => desenes <= "0110000"; unitats <= "1110000";
		when "010010" => desenes <= "0110000"; unitats <= "1111111";
		when "010011" => desenes <= "0110000"; unitats <= "1110011";
		when "010100" => desenes <= "1101101"; unitats <= "1111110";
		when "010101" => desenes <= "1101101"; unitats <= "0110000";
		when "010110" => desenes <= "1101101"; unitats <= "1101101";
		when "010111" => desenes <= "1101101"; unitats <= "1111001";
		when "011000" => desenes <= "1101101"; unitats <= "0110011";
		when "011001" => desenes <= "1101101"; unitats <= "1011011";
		when "011010" => desenes <= "1101101"; unitats <= "1011111";
		when "011011" => desenes <= "1101101"; unitats <= "1110000";
		when "011100" => desenes <= "1101101"; unitats <= "1111111";
		when "011101" => desenes <= "1101101"; unitats <= "1110011";
		when "011110" => desenes <= "1111001"; unitats <= "1111110";
		when "011111" => desenes <= "1111001"; unitats <= "0110000";
		when "100000" => desenes <= "1111001"; unitats <= "1101101";
		when "100001" => desenes <= "1111001"; unitats <= "1111001";
		when "100010" => desenes <= "1111001"; unitats <= "0110011";
		when "100011" => desenes <= "1111001"; unitats <= "1011011";
		when "100100" => desenes <= "1111001"; unitats <= "1011111";
		when "100101" => desenes <= "1111001"; unitats <= "1110000";
		when "100110" => desenes <= "1111001"; unitats <= "1111111";
		when "100111" => desenes <= "1111001"; unitats <= "1110011";
		when "101000" => desenes <= "0110011"; unitats <= "1111110";
		when "101001" => desenes <= "0110011"; unitats <= "0110000";
		when "101010" => desenes <= "0110011"; unitats <= "1101101";
		when "101011" => desenes <= "0110011"; unitats <= "1111001";
		when "101100" => desenes <= "0110011"; unitats <= "0110011";
		when "101101" => desenes <= "0110011"; unitats <= "1011011";
		when "101110" => desenes <= "0110011"; unitats <= "1011111";
		when "101111" => desenes <= "0110011"; unitats <= "1110000";
		when "110000" => desenes <= "0110011"; unitats <= "1111111";
		when "110001" => desenes <= "0110011"; unitats <= "1110011";
		when "110010" => desenes <= "1011011"; unitats <= "1111110";
		when "110011" => desenes <= "1011011"; unitats <= "0110000";
		when "110100" => desenes <= "1011011"; unitats <= "1101101";
		when "110101" => desenes <= "1011011"; unitats <= "1111001";
		when "110110" => desenes <= "1011011"; unitats <= "0110011";
		when "110111" => desenes <= "1011011"; unitats <= "1011011";
		when "111000" => desenes <= "1011011"; unitats <= "1011111";
		when "111001" => desenes <= "1011011"; unitats <= "1110000";
		when "111010" => desenes <= "1011011"; unitats <= "1111111";
		when "111011" => desenes <= "1011011"; unitats <= "1110011";
		when others => desenes <= "0000001"; unitats <= "0000001";
	end case;
end process;

end Behavioral;

