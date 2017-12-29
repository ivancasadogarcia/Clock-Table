----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:58:27 09/25/2016 
-- Design Name: 
-- Module Name:    div50k - Behavioral 
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

entity div10 is
	Port (  clk_in: in std_logic;
			  clk_out: out std_logic );
end div10;

architecture Behavioral of div10 is

signal cnt: integer :=0;
signal tmp : std_logic := '0';
begin
	process (clk_in)
	begin
		if (clk_in'event and clk_in = '1') then
			if cnt >= 4 then
				tmp <= not(tmp);
				cnt <= 0;
			else
				tmp <= tmp;
				cnt <= cnt +1;
			end if;
			clk_out <= tmp;
		end if;
end process;


end Behavioral;

