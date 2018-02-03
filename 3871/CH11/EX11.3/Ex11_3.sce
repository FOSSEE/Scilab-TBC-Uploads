//===========================================================================
//chapter 11 example 3
clc;
clear all;

//variable declaration
R	= 400;		//total resistance of slide-wire of 200 cmin Ω
L1	= 101.8;		//length of slide wire in cm
L	= 200;		//length of wire in cm
v1	= 1.018;		//voltage drop across 101.8cm length of slide wire in V
v	= 3;		//battery voltage in V
a	= 0.2;		//it is possible to read a of 1 mm

//calculations
R1	= (R/L)*L1;		//resistance of slide wire of 101.8 cm in Ω
I1	= v1/R1;		//working current in A
RT	= v/I1;		//total resistance of battery circuit in Ω
RR	= RT-R;		//resistance of series rheostat in Ω
r	= I1*R;		//measuring range in V
//since 200cm length represents 2 V
//1 mm length represents = z
z	= (r/L)*(1/10);	//voltage represented for 1mm length
Ri	= z*a;		//resolution of instrument in mV

//result
mprintf("working current = %3.1e A",(I1*10^3));
mprintf("\nresistance of series rheostat = %3.2f Ω",RR);
mprintf("\nmeasuring range = %3.2f  V",r);
mprintf("\nresolution of the instrument = %3.2f mV",(Ri*10^3));
