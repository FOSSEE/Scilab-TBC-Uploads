//=====================================================================================
//Chapter 12 example 19

clc;clear all;

//variable declaration
R3         = 300; 		//resistance of arm  in  Ω
R4         = 72.6; 		//resistance of arm  in  Ω
C2        = 500*10^-12;		//capacitance in F	
C4        = 0.148*10^-6;		//capacitance in F
f           = 50;		//frequency in Hz

//calculations
Cx    = (R4*C2)/(R3);		//capacitance in F
Rx    = (R3*C4)/(C2);		//resistance   in  Ω
x     = 2*(%pi)*f*Cx*Rx;
d    = atan(x);			//dielectric loss angle of bushing in °
d1  = (d*180)/%pi;
//result

mprintf("\ncapacitance = %3.2e uF",(Cx));
mprintf("resistace = %3.2f  KΩ",(Rx*10^-3));
mprintf("\ndielectric loss angle of bushing  = %3.3f °",d1);

