//===========================================================================
//chapter 7 example 18


clc;clear all;

//variable declaration
VL	=400;		//voltage in V
IL	= 10;		//current in A
//r	= W1/W2
//tan(phi)		= sqrt(3)*((W1-W2)/(W1+W2))
//tan(phi)		= sqrt(3)*((1-(W2/W1))/(1+(W2/W1)))
//tan(phi)		= sqrt(3)*((1-r)/(1+r))
//cos(phi)		= 1/sec(phi) = 	1/sqrt(1+(tan(phi)^2) = 1/sqrt(1+(3*((1-r)/(1+r))^2)
r	= 0.5;
z       = ((1-r)/(1+r))^2;
pf	= 1/sqrt(1+(3*z));
phi	= (acos(pf)*180/%pi);
W1	= VL*IL*cos((30*%pi/180)-(phi*%pi/180));		//wattmeter reading in W
W2	= VL*IL*cos((30*%pi/180)+(phi*%pi/180));		//wattmeter reading in W

//result
mprintf("wattmeter reading = %3.2f W",  W1);
mprintf("\nwattmeter reading = %3.2f W",W2);

