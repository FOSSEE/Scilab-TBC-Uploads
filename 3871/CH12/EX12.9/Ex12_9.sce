//===============================================================================
//Chapter 12 Example 9

clc;clear all;

//variable declaration
R2         = 1000; 		//resistance of arm  in  Ω
R3         = 1000; 		//resistance of arm  in  Ω
R1         = 500; 		//resistance of arm  in  Ω
L1         = 0.18;		//inductance in H

//calculations
f           = 5000/(2*(%pi));		//frequency in Hz
w         = 2*(%pi)*f;
x     =   R1/((w^2)*L1);		//R4*C4 be x
z  = ((w^2)*(x^2));
a    = (1+z);
C4      = (L1*a)/(R2*R3);
//from 1 and 2 equations
//R4   = R4*C4/C4 = x/C4
R4      = (x)/(C4);		//resistance  in  Ω

//result
mprintf("resistance = %3.2f Ω",R4);

