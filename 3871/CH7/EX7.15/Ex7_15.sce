//===========================================================================
//chapter 7 example 15
clc;
clear all;

//variable declaration
W1	= 300;		//wattmeter reading in kW
W2	= 100;		//wattmeter reading in kW
	
//calculations
P	= W1+W2;		//input power in kW
phi	= atan(((W1-W2)/(W1+W2))*sqrt(3));		//phase angle in radians
phi1    = (phi*180)/%pi; 
pf	=cos((phi1*%pi)/180);		//power factor lagging


//result
mprintf("input power = %3.2f kW",P);
mprintf("power factor  = %3.3f lagging",pf);

