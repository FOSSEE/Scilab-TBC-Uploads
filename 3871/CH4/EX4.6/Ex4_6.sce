//===========================================================================
//chapter 4 example 6

clc;
clear all;

//Variable declaration
I1      = 10;		//current in A
theta1  = 60;          //deflection in   °
theta2  = 40;          //deflection in   °


//calculations
I2     = (I1)*(theta2/(theta1));		//current in case spring controlled ammeter in A
x      = sin(((theta2*%pi)/(180)));
y      = sin((theta1*%pi)/(180));
I21     = (I1)*(x/y);		//current in case gravity controlled ammeter in A


//result
mprintf("current in case spring controlled ammeter = %3.2f A",I2);
mprintf("\ncurrent in case gravity controlled ammeter = %3.2f A",I21);

