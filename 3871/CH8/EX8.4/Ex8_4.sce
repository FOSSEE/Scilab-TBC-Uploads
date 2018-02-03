//===========================================================================
//chapter 8 example 4


clc;clear all;

//variable declaration
M1     = 5;		//meter constant in A-s/rev
V       = 250;	//voltage in V
t        = 60;		//time in minute

//calculations
M2     = M1*V;		//meter constant in W-s/rev with rated voltage of 250V
M3       = M2/(1000*3600);		//meter constant in kWh/rev
M        = 1/(M3);			//meter constant in rev/kWh
E         = (M2/(t*1000));		//energy consumed in 1 minute at full-load
S         = M*E;			//full-load speed in rpm

//result
mprintf("meter constant in revolutions per kWh = %3.2d",M);
mprintf("\nfull-load speed = %3.2d rpm",S);
