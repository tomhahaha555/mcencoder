----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2019 20:48:27
-- Design Name: 
-- Module Name: outputmachine - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity outputmachine is
  Port ( 
        datain : in STD_LOGIC_VECTOR (7 downto 0);
        sout : out STD_LOGIC;
        readcall : out STD_LOGIC;
        clk : in STD_LOGIC;
        clr : in STD_LOGIC
  );
end outputmachine;

architecture Behavioral of outputmachine is

signal temp : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal counter : integer range 0 to 20;

begin

clk_proc: process(clk,clr)
    begin
        if clr = '1' then
            counter <= 0;
            temp <= "00000000";
            sout <= '0';
            readcall <= '0';
        elsif (clk'event and clk = '1') then
            --default condition
            readcall <= '0';
            
            --store the character from datain to temp 
            case datain is
                when "00100000" =>
                    temp <= "00100000";
                when "00101110" =>
                    temp <= "00101110";
                when "01000001" =>
                    temp <= "01000001";
                when "01000010" =>
                    temp <= "01000010";
                when "01000011" =>
                    temp <= "01000011";
                when "01000100" =>
                    temp <= "01000100";
                when "01000101" =>
                    temp <= "01000101";
                when "01000110" =>
                    temp <= "01000110";
                when "01000111" =>
                    temp <= "01000111";
                when "01001000" =>
                    temp <= "01001000";
                when "01001001" =>
                    temp <= "01001001";
                when "01001010" =>
                    temp <= "01001010";
                when "01001011" =>
                    temp <= "01001011";
                when "01001100" =>
                    temp <= "01001100";
                when "01001101" =>
                    temp <= "01001101";
                when "01001110" =>
                    temp <= "01001110";
                when "01001111" =>
                    temp <= "01001111";
                when "01010000" =>
                    temp <= "01010000";
                when "01010001" =>
                    temp <= "01010001";
                when "01010010" =>
                    temp <= "01010010";
                when "01010011" =>
                    temp <= "01010011";
                when "01010100" =>
                    temp <= "01010100";
                when "01010101" =>
                    temp <= "01010101";
                when "01010110" =>
                    temp <= "01010110";
                when "01010111" =>
                    temp <= "01010111";
                when "01011000" =>
                    temp <= "01011000";
                when "01011001" =>
                    temp <= "01011001";
                when "01011010" =>
                    temp <= "01011010";
                when others => null;
            end case;
            
            
            --ouput the character
            case temp is
                when "00100000" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '0';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => null;
                     end case;
                when "00101110" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '1';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '0';
                        when 9 =>
                            sout <= '1';
                        when 10 =>
                            sout <= '1';
                        when 11 =>
                            sout <= '1';
                            temp <= "00000000";
                        when others => 
                     end case;
                when "01000001" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '1';
                        when 5 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others =>
                    end case;
                when "01000010" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 => 
                            sout <= '0';
                        when 7 =>
                            sout <= '1';
                        when 8 =>
                            sout <= '0';
                        when 9 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others =>
                    end case;
                when "01000011" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '1';
                        when 9 =>
                            sout <= '1';
                        when 10 =>
                            sout <= '0';
                        when 11 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01000100" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01000101" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01000110" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '1';
                        when 7 => 
                            sout <= '1';
                        when 8 => 
                            sout <= '0';
                        when 9 => 
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01000111" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '1';
                        when 7 => 
                            sout <= '1';
                        when 8 => 
                            sout <= '0';
                        when 9 => 
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01001000" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01001001" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01001010" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '1';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '1';
                        when 9 =>
                            sout <= '1';
                        when 10 =>
                            sout <= '0';
                        when 11 =>
                            sout <= '1';
                        when 12 =>
                            sout <= '1';
                        when 13 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01001011" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '1';
                        when 9 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01001100" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '1';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '0';
                        when 9 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01001101" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '1';
                        when 7 => 
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01001110" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01001111" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '1';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '0';
                        when 9 =>
                            sout <= '1';
                        when 10 =>
                            sout <= '1';
                        when 11 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01010000" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '1';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '1';
                        when 9 =>
                            sout <= '1';
                        when 10 =>
                            sout <= '0';
                        when 11 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01010001" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '1';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '0';
                        when 9 =>
                            sout <= '1';
                        when 10 =>
                            sout <= '0';
                        when 11 =>
                            sout <= '1';
                        when 12 =>
                            sout <= '1';
                        when 13 => 
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01010010" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '1';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01010011" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01010100" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01010101" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '1';
                        when 7 => 
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01010110" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '1';
                        when 9 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01010111" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '0';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '1';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '1';
                        when 9 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01011000" =>
                   case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '0';
                        when 9 =>
                            sout <= '1';
                        when 10 =>
                            sout <= '1';
                        when 11 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01011001" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '0';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '1';
                        when 9 =>
                            sout <= '1';
                        when 10 =>
                            sout <= '0';
                        when 11 =>
                            sout <= '1';
                        when 12 =>
                            sout <= '1';
                        when 13 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when "01011010" =>
                    case counter is
                        when 0 =>
                            sout <= '0';
                        when 1 =>
                            sout <= '1';
                        when 2 => 
                            sout <= '1';
                        when 3 =>
                            sout <= '1';
                        when 4 =>
                            sout <= '0';
                        when 5 =>
                            sout <= '1';
                        when 6 =>
                            sout <= '1';
                        when 7 => 
                            sout <= '1';
                        when 8 =>
                            sout <= '0';
                        when 9 =>
                            sout <= '1';
                        when 10 =>
                            sout <= '0';
                        when 11 =>
                            sout <= '1';
                            temp <= "00000000";
                            readcall <= '1';
                        when others => 
                     end case;
                when others => null;
          end case;
        
        --deal with the counter value  
        if not(datain = "00000000") then
            counter <= 0;
        else
            counter <= counter + 1;
        end if;
            
        --default condition    
        if temp = "00000000" then
            sout <= '0';
        end if;
        
        end if;
end process;

end Behavioral;
