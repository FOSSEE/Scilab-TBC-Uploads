//===========================================================================
//chapter 8 example 3

clc;clear all;

//variable declaration
T     = 0.5;			//time in hours
V       = 220;		//voltage in V
I        = 5;			//current in A
P      = 525;			//consumption registered in Wh
P1      =0.525;			//consumption registered in kWh

//calculations

E      = ((V*I)/(1000))*T;		//energy consumed in kWh
e      = ((P1-E)/(E))*100;		//percentage error in %

//result
mprintf("percentage error  = %3.2f percentage(slow) ",e);
