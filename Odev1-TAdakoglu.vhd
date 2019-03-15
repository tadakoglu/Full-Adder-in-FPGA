library ieee;
use ieee.std_logic_1164.all;

entity Odev1TAdakoglu is

	port(
			a	:in std_logic_vector(1 downto 0):= b"11";
			b	:in std_logic_vector(1 downto 0):= b"11";
			cin :in std_logic:= '1';
			
			s	:out std_logic_vector(1 downto 0);
			cout :out std_logic
		);
end entity;

architecture data of Odev1TAdakoglu is

	component full_adder
		port(
		a	:in std_logic;
		b	:in std_logic;
		cin :in std_logic;
		
		s	:out std_logic;
		cout	:out std_logic;
		);
	end component;
	
	signal s_a1:std_logic;
	signal s_b1:std_logic;	
	signal s_cin1: std_logic;
	signal s_s1: std_logic;
	signal s_cout1: std_logic;
	signal s_a2: std_logic;
	signal s_b2: std_logic;
	signal s_cin2: std_logic;
	signal s_s2: std_logic;
	signal s_cout2: std_logic;
	
	begin
		s_a1 <= a(0);
		s_b1 <= b(0);
		s_cin1 <= '0';
		
		s_a2 <= a(1);
		s_b2 <= b(1);
		s_cin2 <= s_cout1;
		
		s(0) <= s_s1;
		s(1) <= s_s2;
		
		cout <= s_cout2;
		
		end process
in_fulladder1: full_adder port map(
		a	=> s_a1,
		b	=> s_b1,
		cin => s_cin1,
			
		s	=> s_s1,
		cout => s_cout1
);

in_fulladder2: full_adder port map(
		a => s_a2, -- sinyallere haritalama yapma operatörü
		b => s_b2,
		cin => s_cin2,
		
		s => s_s2,
		cout => s_cout2
);

end data
			
	
	
	
	
	
	
	
	
	