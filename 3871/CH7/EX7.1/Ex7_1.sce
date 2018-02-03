//===========================================================================
//chapter 7 example 1

clc;clear all;


//variable declaration
P	= 250;		//wattmeter reading in watts
Rp	= 2000;		//pressure coil circuit resistance in Ω
VL	= 200;		//load voltage in V

//calculations
p	= (VL^2)/Rp;	//power lost in pressure coil in watts
P1	= P-p;		//power lost in the pressure coil circuit in watts


//result
mprintf("power lost in the pressure coil circuit  = %3.2f watts",P1);

