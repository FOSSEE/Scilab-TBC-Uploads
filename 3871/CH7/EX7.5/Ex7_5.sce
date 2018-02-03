//===========================================================================
//chapter 7 example 5
clc;clear all;

//variable declaration
f	= 50;		//frequency in Hz
L	= 5*10^-3	//inductance 
V	= 100;		//voltage in V
I	= 10;		//current in A
R1	= 3000;		//resistance in Ω

//calculations
x       = ((2*%pi*f*L)/R1);            //tan(theta)
theta 	= atan(x);	//the angle by which the current in pressure coil lags behind the voltage
//W = V*I*sin(90+theta) = V*I*cos(theta) = V*I*tan(theta)
//W=V*I*theta		//since theta is small
W	= V*I*x;	//reading of wattmeter in watt

//result
mprintf("error = %3.2f watts",W);
