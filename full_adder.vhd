
entity full_adder is

generic( N:integer:= 100 );

port (
	sw : in std_logic_vector(17 downto 0); -- ya da 0 to 17 olabiilir -- BACAK eşleştirmesi için kullanılır modelslim de modellerken gereksizdir.
	al: in std_logic;
	a:in bit;
	b:in bit;
	cin:in bit;
	s:out bit);
end entity;

-- buradaki <= atama işlemidir >= ters atama işlemi DEĞİLDİR.

architecture data of full_adder is
begin
	s <= a xor b xor cin;
	cout <= (a and b) or (b and cin) or (a and cin);
end data;