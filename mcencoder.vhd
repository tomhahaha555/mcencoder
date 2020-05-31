----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2019 22:42:03
-- Design Name: 
-- Module Name: mcencoder - Behavioral
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

entity mcencoder is
  Port ( 
        clk		: in  STD_LOGIC;
		clr		: in  STD_LOGIC;
		den	: in  STD_LOGIC;
		din	: in  STD_LOGIC_VECTOR (7 downto 0);
		sout : out STD_LOGIC
		);
end mcencoder;

architecture Behavioral of mcencoder is

component FIFO
    port(
        clk		: in  STD_LOGIC;
		clr		: in  STD_LOGIC;
		den	: in  STD_LOGIC;
		din	: in  STD_LOGIC_VECTOR (7 downto 0);
		dout	: out STD_LOGIC_VECTOR (7 downto 0);
		callin : in STD_LOGIC
        );
end component;
component outputmachine
    port(
        datain : in STD_LOGIC_VECTOR (7 downto 0);
        sout : out STD_LOGIC;
        readcall : out STD_LOGIC;
        clk : in STD_LOGIC;
        clr : in STD_LOGIC
        );
end component;
signal readcall: std_logic;
signal dout: std_logic_vector(7 downto 0);

begin
    read: FIFO port map(   
    clk => clk,
    clr => clr,
    den => den,
    din => din,
    dout => dout,
    callin => readcall
    );
    output: outputmachine port map(   
    datain => dout,
    sout => sout,
    readcall => readcall,
    clk => clk,
    clr => clr
    );

end Behavioral;
