//=====================================================================================
//Chapter 12 example 20

clc;clear all;

//variable declaration
R3         = 130; 		//resistance of arm  in  Ω
R4         = 318; 		//resistance of arm  in  Ω
C2        = 106*10**-12;		//capacitance in F	
C4        = 0.35*10**-6;		//capacitance in F
f           = 50;		//frequency in Hz

//calculations
Cx    = (R4*C2)/(R3);		//capacitance in F
Rx    = (R3*C4)/(C2);		//resistance   in  Ω
x     = 2*(%pi)*f*Cx*Rx;    //power factor


//result

mprintf("capacitance = %3.2e uF",(Cx));
mprintf("\nresistace = %3.2f  KΩ",(Rx*10^-3));
mprintf("\npower factor  = %3.3f ",x);


