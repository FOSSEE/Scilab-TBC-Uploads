//=====================================================================================
//Chapter 12 example 18

clc;clear all;

//variable declaration
R3         = 2000; 		//resistance of arm  in  Ω
R4         = 2950; 		//resistance of arm  in  Ω
R2         = 5; 		//resistance of arm  in  Ω
r2         = 0.4; 			//resistance   in  Ω
C2        = 0.5*10^-6;		//capacitance in F
f           = 450;		//frequency in Hz

//calculations
r1    = (R3*(r2+R2))/R4		//resistance   in  Ω
C1    = ((R4/R3)*C2)	//capacitance in F
tand   = 2*(%pi)*f*C1*r1	//dissipation power ,C1 in uF

//result
mprintf("resistace = %3.2f  Ω",r1);
mprintf("\ncapacitance = %3.2e uF",(C1*10^6));
mprintf("\ndissipation factor = %3.2e ",(tand));
