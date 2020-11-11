LIBRARY ieee;
LIBRARY generics;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT BcdTo7Segment
	PORT(
		B0 : IN std_logic;
		B1 : IN std_logic;
		B2 : IN std_logic;
		B3 : IN std_logic;          
		A : OUT std_logic;
		B : OUT std_logic;
		C : OUT std_logic;
		D : OUT std_logic;
		E : OUT std_logic;
		F : OUT std_logic;
		G : OUT std_logic
		);
	END COMPONENT;

	SIGNAL B0 :  std_logic;
	SIGNAL B1 :  std_logic;
	SIGNAL B2 :  std_logic;
	SIGNAL B3 :  std_logic;
	SIGNAL A :  std_logic;
	SIGNAL B :  std_logic;
	SIGNAL C :  std_logic;
	SIGNAL D :  std_logic;
	SIGNAL E :  std_logic;
	SIGNAL F :  std_logic;
	SIGNAL G :  std_logic;

BEGIN

	uut: BcdTo7Segment PORT MAP(
		B0 => B0,
		B1 => B1,
		B2 => B2,
		B3 => B3,
		A => A,
		B => B,
		C => C,
		D => D,
		E => E,
		F => F,
		G => G
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		--00000--
		B3<='0';
		B2<='0';
		B1<='0';
		B0<='0';

		wait for 50ns;

		--11111--
		B3<='0';
		B2<='0';
		B1<='0';
		B0<='1';

		wait for 50ns;

		--22222--
		B3<='0';
		B2<='0';
		B1<='1';
		B0<='0';

		wait for 50ns;

		--33333--
		B3<='0';
		B2<='0';
		B1<='1';
		B0<='1';

		wait for 50ns;

		--44444--
		B3<='0';
		B2<='1';
		B1<='0';
		B0<='0';

		wait for 50ns;
	
		--55555--
		B3<='0';
		B2<='1';
		B1<='0';
		B0<='1';

		wait for 50ns;

		--66666--
		B3<='0';
		B2<='1';
		B1<='1';
		B0<='0';

		wait for 50ns;

		--77777--
		B3<='0';
		B2<='1';
		B1<='1';
		B0<='1';

		wait for 50ns;

		--88888--
		B3<='1';
		B2<='0';
		B1<='0';
		B0<='0';

		wait for 50ns;

		--99999--
		B3<='1';
		B2<='0';
		B1<='0';
		B0<='1';

		wait for 50ns;

		--AAAAA--
		B3<='1';
		B2<='0';
		B1<='1';
		B0<='0';

		wait for 50ns;

		--BBBBB--
		B3<='1';
		B2<='0';
		B1<='1';
		B0<='1';

		wait for 50ns;

		--CCCCC--
		B3<='1';
		B2<='1';
		B1<='0';
		B0<='0';

		wait for 50ns;

		--DDDDD--
		B3<='1';
		B2<='1';
		B1<='0';
		B0<='1';

		wait for 50ns;

		--EEEEE--
		B3<='1';
		B2<='1';
		B1<='1';
		B0<='0';

		wait for 50ns;

		--FFFFF--
		B3<='1';
		B2<='1';
		B1<='1';
		B0<='1';

		wait for 100ns;

		--ALL--
		B3<='1';
		B2<='0';
		B1<='0';
		B0<='0';
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;

