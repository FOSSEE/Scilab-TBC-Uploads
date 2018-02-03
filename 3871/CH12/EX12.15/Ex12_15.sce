//=====================================================================================
//Chapter 12 example 15

clc;clear all;

//variable declaration
R2         = 100; 		//resistance of arm  in  Ω
R4         = 309; 		//resistance of arm  in  Ω
C4        = 0.5*10^-6;		//capacitance in F
C3        = 109*10^-12;		//capacitance in F
f        = 50;                 //frequency in Hz

//calculations
w        =2*(%pi)*f;
Cx       = (R4*C3)/(R2);		//equivalent series capacitance in F
Rx       = (C4*R2)/(C3);		//series resistance in Ω
p         = w*Rx*Cx;			//power factor of the specimen (sind =tand)


//result
mprintf("power factor of the specimen = %3.5f",p)   ;

