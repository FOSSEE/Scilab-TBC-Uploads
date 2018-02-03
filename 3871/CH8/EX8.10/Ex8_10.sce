//===========================================================================
//chapter 8 example 10

clc;clear all;

//variable declaration
V       = 230;	//voltage in V
I        = 10;		//current in A
T       = 30;		//time in minutes
x      =0.8;		//power factor 
n     = 890;		//number of revolutions made
M    = 1200;		//meter constant in revolutions per kWh
E      = 58.25;		//dial reading at the end of test
E1      = 57.35;		//dial reading at the start of test

//calculations
Ea     = (V*I*(T/(60))*x)/(1000);		//Energy consumed 1 minute
Em   = E-E1;			//energy consumption recorded by the meter in kWh
e        = Em-Ea;			//error in registration in kWh 
N        = M*Em;			//actual revolutions required to be made by the  meter for an energy consumption of 0.90kWh
e       = (n-N)/(T);			//error in rpm

//result
mprintf("error = %3.2f rpm",e);

