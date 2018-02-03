
//=====================================================================================
//Chapter 12 example 21

clc;clear all;

//variable declaration
M1    = 15.9;		//mutual inductance in mH
M2    = 0.1;			//mutual inductance in mH
r1      = 25.9;		//resistance   in  Ω
r2      = 12.63;		//resistance   in  Ω

//calculations
L1     = 2*(M1-M2);		//self inductance in mH
R1    = r1-r2;		//resistance   in  Ω

//result
mprintf("self inductance = %3.2f mH",L1);
mprintf("\nresistance = %3.2f Ω",R1);
