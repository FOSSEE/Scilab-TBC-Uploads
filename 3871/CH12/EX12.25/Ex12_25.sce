//=====================================================================================
//Chapter 12 example 25
clc;clear all;

//variable declaration
f1    = 3;		//frequency in MHz
f2   =6;		//frequency in MHz
C1        = 251;	//capacitance in pF	
C2        = 50;		//capacitance in pF

//calculations
Cd    = (C1-(4*C2))/(3);		//self capacitance of the coil in uuF
//since f1 = 2f2


//result
mprintf("self capacitance of the coil = %3.2f pF",Cd);
