library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity div25k is
	Port (  clk_in: in std_logic;
			  clk_out: out std_logic );
end div25k 

ARCHITECTURE Behavioral of div25k is

signal cnt: integer :=0;
signal tmp : std_logic := '0';
begin
	process (clk_in)
	begin
		if (clk_in'event and clk_in = '1') then
			if cnt >= 12499 then
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

