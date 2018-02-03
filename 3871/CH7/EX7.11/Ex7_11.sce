//===========================================================================
//chapter 7 example 11

clc;clear all;

//variable declaration
I1	= 2.5;		//current across an inductive load in A
I2	= 2.4;		//current across an non- inductive resistor in A
I3	= 4.5;		//current across the two in series in A
V	= 250;		//supply voltage in V


//calculations
R	= V/I2;	// non- inductive resistance in Ω
P	= ((I3^2)-(I1^2)-(I2^2))*(R/2);	//power absorbed by the load in watts
Z	= V/I1;			//load impedance in Ω
x	= ((I3^2)-(I1^2)-(I2^2))/(2*I1*I2);	//cos(phi) 

//result
mprintf("power absorbed by the load = %3.2f watts",P);
mprintf("\nload impedance = %3.2f Ω",Z);
mprintf("\npower factor cos (phi) = %3.4f lagging",x);
