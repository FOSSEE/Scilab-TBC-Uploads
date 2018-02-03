//===========================================================================
//chapter 8 example 5

clc;clear all;

//variable declaration
n      = 15;		//number of revolutions made 
M     = 750;		//meter constant in revolutions per kWh
T       = 30;		//time in seconds

//calculations
E      = n/(M);		//Energy consumed in 30 seconds
L      = (E*3600)/T;	//load in kW

//result
mprintf("Energy consumed in 30 seconds = %3.2f kWh",E);
mprintf("\nLoad = %3.2f kW",L);

