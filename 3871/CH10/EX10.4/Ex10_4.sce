//===========================================================================
//chapter 10 example 4
clc;
clear all;

//variable declaration
S	= 0.02;		//resistance of standard resistor in Ω
Vs	= 0.98;		//voltage drop across standard resistor in V
Vx	= 0.735;		//voltage drop across resistor  under test in V

//calculations
X	= (S*Vx)/Vs;	//Resistance of resistor under test in Ω

//result
mprintf("Resistance of resistor under test= %3.3f  Ω",X);
