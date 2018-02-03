//===========================================================================
//chapter 7 example 16

clc;clear all;

//variable declaration
W1	= 20;		//wattmeter reading in kW
W2	= -5;		//wattmeter reading in kW
	
//calculations
P	= W1+W2;		//input power in kW
phi	= atan(((W1-W2)/(W1+W2))*sqrt(3));		//phase angle in ° 
pf	=cos(phi);		//power factor lagging

//result
mprintf("input power = %3.2f kW",P);
mprintf("\npower factor  = %3.4f lagging",pf);

