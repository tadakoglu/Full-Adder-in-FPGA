ENTITY FULL_ADDER IS
generic( N:integer:= 100; );
PORT (
sw : in std_logic_vector(17 downto 0); -- ya da 0 to17 olabiilir -- BACAK eþleþtirmesi için kullanýlýr modelslim de modellerken gereksizdir.
al: in std_logic;
a:in bit;
b:in bit;
cin:in bit;
s:out bit);
END entity;
-- burasý END FULL_ADDER olarak da yazýlabilirdi. proje adýyla vhdl dosyasý adý ayný olmak zorunda
-- buradaki <= atama iþlemidir >= ters atama iþlemi DEÐÝLDÝR.
architecture data of full_adder is
begin
s <= a exor b exor cin;
cout <= (a and b) or (b and cin) or (a and cin);
end data;