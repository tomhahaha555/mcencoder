LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY TB_STD_FIFO IS
END TB_STD_FIFO;

ARCHITECTURE behavior OF TB_STD_FIFO IS 
	
	-- Component Declaration for the Unit Under Test (UUT)
	component mcencoder
		port (
        clk		: in  STD_LOGIC;
		clr		: in  STD_LOGIC;
		den	: in  STD_LOGIC;
		din	: in  STD_LOGIC_VECTOR (7 downto 0);
		sout : out STD_LOGIC
		);
	end component;
	
	--Inputs
	signal clk		: std_logic := '0';
	signal clr		: std_logic := '0';
	signal din	: std_logic_vector(7 downto 0) := (others => '0');
	signal den	: std_logic := '0';
	signal sout	: std_logic := '0';
	
	--Outputs

	
	-- Clock period definitions
	constant CLK_period : time := 10 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: mcencoder
		PORT MAP (
    clk => clk,
    clr => clr,
    den => den,
    din => din,
    sout => sout
		);
	
	-- Clock process definitions
	CLK_process :process
	begin
		clk <= '0';
		wait for CLK_period/2;
		clk <= '1';
		wait for CLK_period/2;
	end process;
	
	-- Reset process
	-- Write process
	wr_proc : process
		variable counter : unsigned (7 downto 0) := (others => '0');
	begin	
	    clr <= '1';
		wait for CLK_period * 1;
		clr <= '0';	
		wait for CLK_period * 5;
		
		den <= '1';
        din <= "01000001";
        wait for CLK_period;
        din <= "01000011";
        wait for CLK_period;
        din <= "01000010";
        wait for CLK_period;
        din <= "01000100";
        wait for CLK_period;
        din <= "01000101";
        wait for CLK_period;
        din <= "01000110";
        wait for CLK_period;
        din <= "01000110";
        wait for CLK_period;
        din <= "00100000";
        wait for CLK_period;
        din <= "01000110";
        wait for CLK_period;
        din <= "00101110";
        wait for CLK_period;
        den <= '0';
        
        
        din <= "00000000";
        wait for CLK_period * 120;
        
        
		den <= '1';
        din <= "01000110";
        wait for CLK_period;
        din <= "01000011";
        wait for CLK_period;
        din <= "01000010";
        wait for CLK_period;
        din <= "00101110";
        wait for CLK_period;
        den <= '0';
        din <= "00000000";
        
		wait;
	end process;
	
	-- Read process
	rd_proc : process
	begin
		wait for CLK_period * 1000;
		wait;
	end process;

END;
