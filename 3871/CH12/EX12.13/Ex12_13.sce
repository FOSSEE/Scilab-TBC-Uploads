//=====================================================================================
//Chapter 12 example 13
    
clc;clear all;

//variable declaration
R1         = 1000; 		//resistance of arm  in  Ω
R2         = 1000; 		//resistance of arm  in  Ω
R3         = 2000; 		//resistance of arm  in  Ω
R4         = 2000; 		//resistance of arm  in  Ω
C1        = 1*10^-6;		//capacitance in F
f           = 1000;
r1        =10;			//resistance  in  Ω

//calculations
W        = 2*%pi*f;
C2      = (C1*R1)/(R2);		//capacitance in F
r2       =  ((R2*(R3+r1))-(R1*R4))/(R1);		//Resistance in   Ω 
d1     = (W*r1*C1)*(180/%pi);			//phase angle error in  °
d2     = (W*r2*C2)*(180/%pi);			//phase angle error in  °

//calculations
mprintf("phase angle error  = %3.1f °",d1);
mprintf("\nphase angle error  = %3.1f °",d2);

