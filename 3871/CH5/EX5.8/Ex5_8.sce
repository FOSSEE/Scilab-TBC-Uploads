//===========================================================================
//chapter 5 example 8
clc;clear all;

//variable decalaration
Td      = 4*10^-5;      //full-scale defelcting torque in N-m
I         = 10;             //full-scale current in A

//calculations
//Td     = (1/2)*(I^2)*(dL/dtheta);
//dL/dtheta  = x
x      = (2*Td)/(I^2);

//result
mprintf('rate of change of selfinductance = %3.1f uH/rad",(x*10^6));

