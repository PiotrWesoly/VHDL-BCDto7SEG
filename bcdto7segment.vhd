library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity BcdTo7Segment is
port(
	B0,B1,B2,B3: in std_logic; --B0 LSB & B3 MSB--
	A,B,C,D,E,F,G:out std_logic);
end;

architecture simple of BcdTo7Segment is
begin
	A<=(not B2 and not B0) or (not B3 and B1) or (B2 and B1) or (B3 and not B0) or (not B3 and B2 and B0) or (B3 and not B2 and not B1);
	B<=(not B2 and not B1) or (not B2 and not B0) or (not B3 and not B1 and not B0) or (not B3 and B1 and B0) or (B3 and not B1 and B0);
	C<=(not B3 and not B1) or (not B3 and B0) or (not B1 and B0) or (B3 xor B2);
	D<=(B3 and not B1) or (not B3 and not B2 and not B0) or (not B2 and B1 and B0) or (B2 and not B1 and B0) or (B2 and B1 and not B0);
	E<=(not B2 and not B0) or (B1 and not B0) or (B3 and (B1 or B2));
	F<=(not B1 and not B0) or (B2 and not B0) or (B3 and not B2) or (B3 and B1) or (not B3 and B2 and not B1);
	G<=(not B2 and B1) or (B1 and not B0) or (B3 and not B2) or (B3 and B0) or (not B3 and B2 and not B1);
end simple;

