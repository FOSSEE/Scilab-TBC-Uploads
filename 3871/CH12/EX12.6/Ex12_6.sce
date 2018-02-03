//===============================================================================
//Chapter 12 Example 6

clc;clear all;

//variable declaration
R2         = 400; 		//resistance of arm  in  Ω
R3         = 400; 		//resistance of arm  in  Ω
R4         = 400; 		//resistance of arm  in  Ω
C4        =  2*10^-6;		//capacitance in F
r           = 500;		//resistance in  Ω

//calculations
R1    = ((R2*R3)/(R4));		//resistance of coil in Ω
x      = (r*(R3+R4))+(R3*R4)
L1     = (C4*R2*x)/(R3);			//inductance of inductor in H

//result
mprintf("resistance of coil  = %3.2f Ω",R1);
mprintf("\ninductance of inductor = %3.2f Henry",L1);


