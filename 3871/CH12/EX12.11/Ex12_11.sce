//===============================================================================
//Chapter 12 Example 11

clc;clear all;

//variable declaration
R2         = 2410; 		//resistance of arm  in  Ω
R3         = 750; 		//resistance of arm  in  Ω
R4         = 64.9; 		//resistance of arm  in  Ω
R         = 0.4; 		//resistance in  Ω
C4        = 0.35*10^-6;		//capacitance in F
f         = 500;            //frequency in Hz

//calculations
w       = 2*(%pi)*f;		//radian per second
R41   = R4+R;			//resistance in  Ω
L1     = (R2*R3*C4)/(1+((w)*(R4^2)*(C4^2)));		//inductance in H
R1     = (R2*R3*R41*(w^2)*(C4^2))/(1+((w^2)*(R41^2)*(C4^2)));		//resistance in  Ω

//result
mprintf("resistance of coil  = %3.2f Ω",R1);
mprintf("\ninductance of inductor = %3.4f Henry",L1);
