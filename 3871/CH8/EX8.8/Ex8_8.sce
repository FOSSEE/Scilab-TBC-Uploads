//===========================================================================
//chapter 8 example 8

clc;clear all;

//variable declaration
L     = 1;		//Load in kW
S     = 10.2;		//speed of the disc in rpm 
T1       = 12;		//time in hours
M    = 600;		//meter constant in revolutions per kWh

//calculations
T2     = T1*60;	//time in minutes
E      = L*T1;	//actual energy consumed in 12 hours in kWh
N     = S*T2;	//Revolutions made by the disc in 12 hours
E1     = N/(M);	//Energy consumption recorded by the meter 
e    = E1-E;		//error in kWh

//result
mprintf("error = %3.2f kWh more",e);
