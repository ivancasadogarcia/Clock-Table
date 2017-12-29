----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:27:57 09/19/2016 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

entity comptador is
    Port (  Clk: in std_logic;
				reset: in std_logic;
				onoff: in std_logic;
				Qout : out std_logic_vector (5 downto 0));
end comptador;

architecture Behavioral of comptador is

signal Q: unsigned(5 downto 0);
begin
	process (reset,Clk,onoff)
	begin
	Qout <= std_logic_vector(Q);
		if reset='1' then 
			Q <= "000000";
		else
			if Clk'event and Clk = '0' and onoff='1' then
					if Q = to_unsigned(59,6)
						then Q <= "000000";
					else 
						Q <= Q + 1;
					end if;
			else	
				case Clk is
					when '0' => Q <= Q;
					when '1' => Q <= Q;
					when others => Q <= "000000";
				end case;	
			end if;
		end if;
	end process;

end Behavioral;

