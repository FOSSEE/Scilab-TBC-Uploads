//===========================================================================
//chapter 7 example 10

clc;clear all;

//variable declaration
V1	= 200;		//voltage across an inductive load in volts
V2	= 180;		//voltage across an nono- inductive resistor in volts
V3	= 300;		//voltage across the two in series in volts

//calculations
x	= ((V3^2)-(V1^2)-(V2^2))/(2*V1*V2);	//cos(phi) 

//result
mprintf("power factor cos (phi) = %3.3f lagging",x);

