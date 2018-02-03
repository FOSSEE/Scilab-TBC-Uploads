//=====================================================================================
//Chapter 12 example 26
clc;clear all;

//variable declaration
C1        = 1530;	//capacitance in pF	
C2        = 162;	//capacitance in pF	
f1         = 3;		//frequency in MHz
f2         =1;		//frequency in MHz

//calculations
//f1    = 1/((2*math.pi)*(math.sqrt(L*(C2+Cd))))
//f1    = 1/((2*math.pi)*(math.sqrt(L*(C2+Cd))))
//f2  = 3*f1
Cd    = (C1-(9*C2))/(8);		//self capacitance of the coil in pF

//result
mprintf("self capacitance of the coil = %3.2f pF",Cd);

