//===========================================================================
//chapter 8 example 1

clc;clear all;

//variable declaration
P       = 360;		//power in W
t        = 100;		//time in seconds
n       = 10;			//revolutions

//calculations
E      = (P*(t/(3600)))/(1000);		//energy consumed in kWh
M    = n/(E);			//meter constant in revolutions/KWh

//result
mprintf("meter constant in revolutions/KWh = %3.2f ",M);

