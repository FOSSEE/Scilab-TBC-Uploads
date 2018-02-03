//===========================================================================
//chapter 5 example 1

clc;clear all;

//variable declaration
K     = 24*10^-6;		//spring constant in Nm/radian
I      = 5;         //current in A

//calculations
//L     = 20+10*theta - 2*(theta^2)
//partial differentiate w.r.t to theta
//dL/dtheta = x = 10- 4*theta
//dL/dtheta = 2*K*theta/(I^2) 
//x            = 10-4*theta
//y         = theta/x
y    = ((I^2)/(2*K))*10^-6;
theta  = (10*y)/(1+(4*y));		//defelction for current in radians
theta1  =  ((theta*180)/(%pi));

//result

mprintf("deflection = %3.1f °',theta1);

