//===========================================================================
//chapter 8 example 7
clc;clear all;

//variable declaration
V      = 230;	//voltage in V
I      = 4.4;		//current in A
T      = 3;		//time in minutes
x      =1;		//cos(0)=1
n      = 10;		//number of revolutions made
M      = 200;		//meter constant in revolutions per kWh

//calculations
E     = (V*I*(T/(60))*x)/(1000);		//Energy consumed i3 minutes
E1   = n/(M);			//energy consumption registeredin kWh
e     = ((E1-E)/(E))*100;		//percentage error in %

//result
mprintf("percentage error = %3.3f percentage",e);
