//===========================================================================
//chapter 5 example 2

clc;clear all;

//Variable declaration
I      = 5;         //current in A
d   = 30;                                //deflection
I2     = 10; 

//calculations
//L     = 10+5*theta - 2*(theta^2)		//inductancein uH
//partial differentiate w.r.t to theta
//dL/dtheta = x = 5- 4*theta
//dL/dtheta = 2*K*theta/(I^2)
//x            = 10-4*theta
theta  = %pi/(6);
K         = (((5-(4*theta))*10^-6)*(I^2))/(2*theta)		//spring constant in Nm/radian
x         = ((2*K)/(I2^2))*10^6;
theta2   = (5)/(x+4);

//result

mprintf("spring constant = %3.4e Nm/radian",K);
mprintf("\ndeflection for 10 A current = %3.3f radian",theta2);

