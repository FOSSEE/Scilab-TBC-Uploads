//===============================================================================
//Chapter 12 Example 10

clc;clear all;

//variable declaration
R2         = 1000; 		//resistance of arm  in  Ω
R3         = 10000; 		//resistance of arm  in  Ω
R4         = 2000; 		//resistance of arm  in  Ω
C4        = 1*10**-6;		//capacitance in F
w       = 3000;		//radian per second

//calculations

L1     = (R2*R3*C4)/(1+((w^2)*(R4^2)*(C4^2)));		//inductance in H
R1     = (R2*R3*R4*(w^2)*(C4^2))/(1+((w^2)*(R4^2)*(C4^2)));		//resistance in  Ω

//result
mprintf("\ninductance of inductor = %3.2f H",L1);
mprintf("resistance of coil  = %3.2f Ω",R1);


