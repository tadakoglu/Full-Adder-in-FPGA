ENTITY FULL_ADDER IS
generic( N:integer:= 100; );
PORT (
sw : in std_logic_vector(17 downto 0); -- ya da 0 to17 olabiilir -- BACAK e�le�tirmesi i�in kullan�l�r modelslim de modellerken gereksizdir.
al: in std_logic;
a:in bit;
b:in bit;
cin:in bit;
s:out bit);
END entity;
-- buras� END FULL_ADDER olarak da yaz�labilirdi. proje ad�yla vhdl dosyas� ad� ayn� olmak zorunda
-- buradaki <= atama i�lemidir >= ters atama i�lemi DE��LD�R.
architecture data of full_adder is
begin
s <= a exor b exor cin;
cout <= (a and b) or (b and cin) or (a and cin);
end data;