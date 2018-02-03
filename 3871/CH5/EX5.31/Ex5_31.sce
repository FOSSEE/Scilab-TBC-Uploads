//===========================================================================
//chapter 5 example 31

clc;
clear all;

//variable declaration
d     = 0.1;		//diameter in m
F      = 0.005;	//force in Newton
V     = 10000;	//potential diference in V
e0   = 8.85*10^-12;	//permittivity in N
d2      = 26.4*10^-3;	//distance between plates in mm
d1      = 25.4*10^-3;	//distance between plates in mm

//calculations

A      = (%pi/4)*(d^2);		//area of the plates in m**2
x      = sqrt((e0*A)/(2*F));
d2      = x*V;				//distance between plates in mm
//C      = e0*A/d
x1     = 1/d1;
x2     = 1/d2;
C       = e0*A*(x1-x2);		//change in capacitance in uF

//result
mprintf("change in capacitance due to change in distance between plates from 26.4 to 25.4 mm = %3.2f  u uF",(C*10^12));
