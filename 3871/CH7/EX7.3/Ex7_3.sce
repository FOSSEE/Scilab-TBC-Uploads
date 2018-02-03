//===========================================================================
//chapter 7 example 3

clc;clear all;

//variable declaration
V	= 240;		//voltage in V
I	= 8;		//current in A
x	= 0.1;		//pf lagging
Rp	= 8000;		//resistance in Ω
f	= 50;		//frequency in Hz
L	= 63.6*10^-3	//inductance 

//calculations
phi 	= acos(x);
phi1    =(phi*180)/%pi;
P	= V*I*x;		//load power
Pl	= (V^2)/Rp;	//power lost in the pressure coil circuit in watts
Pt	= P+Pl;		//neglecting inductance of the voltage coil the reading of wattmeter would be in watts
Xp	= 2*%pi*f*L;	//reactance in  Ω
theta	= atan(Xp/Rp);
theta1  = (theta*180)/%pi;
A = cos(theta1);
B       =cos(phi1-theta1);
C   = cos(phi1);
w	= Pt*(A)*(B/C);	//wattmeter reading 
e	= ((w-P)/P)*100;		//percentage error in %

//result
mprintf("phi value in textbook is taken wrong correct is 84°.16 but value is 84°.26 so textbook answer is coming wrong")
mprintf("\npercentage error in %3.2f percentage ",e);
