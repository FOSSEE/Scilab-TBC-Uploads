//=====================================================================================
//Chapter 12 example 29

clc;clear all;

//variable declaration
C1        = 95*10^-12;		//capacitance in F	
f1    = 800*10^3;		//frequency in Hz
f2   = 2.5*10^6;		//frequency in Hz

//calculations
w2      = 2*%pi*f;
L    = 1/((w2)^2)*Cd;
L    = 1/((w2)^2)*(C1+Cd)
//comparing above equations
// Cd    =(((w1)**2)*C1)/((w2)**2)-(w1)**2))
Cd    =(((f1)^2)*C1)/(((f2)^2)-((f1)^2));		//capcitance in pF

//result
mprintf("capacitance = %3.2f pF",(Cd*10^12));
