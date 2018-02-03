//===========================================================================
//chapter 8 example 9

clc;clear all;

//variable declaration

V       = 240;	//voltage in V
I        = 8;		//current in A
T       = 1;		//time in minutes
x      =0.6;		//power factor 
M    = 600;		//meter constant in revolutions per kWh

//calculations
E     = (V*I*(T/(60))*x)/(1000);		//Energy consumed 1 minute
S    = E*M;					//speed of the disc in rev/minute

//result
mprintf("speed of the disc = %3.2f rev/minute",S);
