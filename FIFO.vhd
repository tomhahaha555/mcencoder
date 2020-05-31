library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity FIFO is
	Port ( 
		clk		: in  STD_LOGIC;
		clr		: in  STD_LOGIC;
		den	: in  STD_LOGIC;
		din	: in  STD_LOGIC_VECTOR (7 downto 0);
		dout	: out STD_LOGIC_VECTOR (7 downto 0);
		callin : in STD_LOGIC
	);
end FIFO;

architecture Behavioral of FIFO is

signal readen : STD_LOGIC := '0';
signal empty : STD_LOGIC := '0';

begin
	fifo_proc : process (clk)
		type FIFO_Memory is array (0 to 9) of STD_LOGIC_VECTOR (7 downto 0);
		variable Memory : FIFO_Memory;
		
		variable Head : natural range 0 to 9;
		variable Tail : natural range 0 to 9;
		
		variable Looped : boolean;
		
	begin
		
        if clr = '1' then
            Head := 0;
            Tail := 0;
            Looped := false;
            empty <= '1';
            readen <= '0';
        elsif rising_edge(clk) then
            --default condition when FIFO is empty
            if empty = '1' then
                dout <= "00000000";
                Head := 0;
                Tail := 0;
                Looped := false;
                readen <= '0';
            end if;
            
            --write operation
            if (den = '1') then
                if ((Looped = false) or (Head /= Tail)) then
                    Memory(Head) := din;
                    
                    --when full stop is received, read is enabled
                    if (din = "00101110") then
                      readen <= '1';
                    end if;
                    
                    if (Head = 9) then
                        Head := 0;
                        Looped := true;
                    else
                        Head := Head + 1;
                    end if;
                end if;
            end if;
            
            if readen = '1' or callin = '1' then
                if ((Looped = true) or (Head /= Tail)) then
                    dout <= Memory(Tail);
                    --read enable is off after outputting each character
                    readen <= '0';

                    if (Tail = 9) then
                        Tail := 0;
                        Looped := false;
                    else
                        Tail := Tail + 1;
                    end if;
                end if;
            else
                --default output
                dout <= "00000000";
            end if;
            
            --define when to enter empty state
            if (Head = Tail) then
                if Looped then
                    empty <= '0';
                else
                    empty <= '1';
                end if;
            else
                empty	<= '0';
            end if;
        end if;
	end process;
		
end Behavioral;