//=====================================================================================
//Chapter 12 example 22

clc;clear all;

//variable declaration
f1    = 2*10^6;		//frequency from second data in Hz
f2    = 1*10^6;		//frequency from first data in Hz
C1        = 230*10^-12;		//capacitance in F	
C2        = 8*10^-12;		//capacitance in F	 

//calculations
C     = C1+C2;
L    = 1/((((2*(%pi)*f1)^2)*C));		//inductance in uH
Cx     = 1/(((2*(%pi)*f2)^2)*L);		//capacitance in pF

//result
mprintf("inductance = %3.2f uH",(L*10^6));
mprintf("\ncapacitance = %3.2f pF",(Cx*10^12));
