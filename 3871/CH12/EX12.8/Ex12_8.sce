//===============================================================================
//Chapter 12 Example 8

clc;clear all;

//variable declaration
R2         = 1000; 		//resistance of arm  in  Ω
R3         = 16800; 		//resistance of arm  in  Ω
R4         = 833; 		//resistance of arm  in  Ω
C4        = 0.38*10^-6;		//capacitance in F
f           = 50;		//frequency in Hz

//calculations
w       = 2*(%pi)*f;
L1     = (R2*R3*C4)/(1+((w^2)*(R4^2)*(C4^2)));		//inductance in H
R1     = (R2*R3*R4*(w^2)*(C4^2))/(1+((w^2)*(R4^2)*(C4^2)));		//resistance in  Ω


//result
mprintf("inductance of inductor = %3.2fHenry",L1);
mprintf("\nresistance of coil  = %3.2f Ω",R1);

