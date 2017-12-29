----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:07:04 09/26/2016 
-- Design Name: 
-- Module Name:    visualitzador7seg - Behavioral 
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

entity visualitzador7seg is
	Port ( clk : in  STD_LOGIC;
			 unitats : in  STD_LOGIC_VECTOR (6 downto 0);
			 desenes : in  STD_LOGIC_VECTOR (6 downto 0);
			 seg : out  STD_LOGIC_VECTOR (6 downto 0);
			 dp : out  STD_LOGIC;
			 posicio : out  STD_LOGIC_VECTOR (3 downto 0));
end visualitzador7seg;

architecture Behavioral of visualitzador7seg is

begin
process(clk, unitats, desenes)
	begin
		case clk is
		when '0' => seg <= not std_logic_vector(unitats);
			posicio <= "1110"; -- visualitzem les unitats
			dp <= '1'; -- decimal points Off
		when others => seg <= not std_logic_vector(desenes);
			posicio <= "1101"; -- visualitzem les desenes
			dp <= '1'; -- decimal points Off
	end case;
end process;

end Behavioral;

