//===========================================================================
//chapter 7 example 25
clc;
clear all;

//variable declaration
VL	= 415;		//voltage in V
IL	= 20;		//current in A
pf	= 0.8;		//phase angle

//calculations
phi	=acos(pf)		//phase angle in °
phi1    = (phi*180)/%pi
x   = cos((30-phi1)*%pi/180)
W1	= VL*IL*x		//wattmeter reading in W
W2	= VL*IL*cos((30+phi1)*%pi/180)	//wattmeter reading in W
//total KVAR = sqrt(3))*(W1-W2)
// W	= totalKVAR/sqrt(3)
//W	= (sqrt(3))*(W1-W2))/sqrt(3);		//wattmeter reading
W	= W1-W2				//wattmeter reading

//result
mprintf("reading on wattmeter 1 = %3.2d  W",W1);
mprintf("\nreading on wattmeter 2 = %3.2d  W",W2);
mprintf("\nreading on wattmeter = %3.2f W",W);
