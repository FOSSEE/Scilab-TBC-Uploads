//===========================================================================
//chapter 8 example 6


clc;clear all;

//variable declaration
M     = 500;		//meter constant in revolutions per kWh
n      = 40;		//number of revolutions made 
T1     = 58.1;	//time in seconds
P      = 5;		//power in kW

//calculations
x    =P*T1;
E      =(x/3600);		//Energy consumed in 58.1 seconds
E1   = n/(M);			//energy consumption registeredin kWh
e     = ((E1-E)/E)*100;		//percentage error in %

//result
mprintf("percentage error = %3.2f percentage",e);

