//===========================================================================
//chapter 10 example 5
clc;clear all;

//variable declaration
Vx1	= 0.835;		//indicated calue of voltage drop across the unknown resistance in V
emf	= -25*10^-6;	//thermal emf with unknown resistance in V	
S	= 0.10025;		//resistance of standard resistor in Ω
Vs	= 0.984;		//voltage drop across standard resistor in V

//calculations
Vx  = Vx1-emf;
X	= (S*Vx)/Vs;	//Resistance of resistor under test in Ω

//result
mprintf("unknown resistor = %3.5f  Ω",X);
