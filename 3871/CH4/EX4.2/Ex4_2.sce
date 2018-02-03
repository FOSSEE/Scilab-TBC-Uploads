//===========================================================================
//chapter 4 example 2
clc;
clear all;


//variable decalartion
W      = 0.005;              //controlling weight  in Kg
L      = 0.024;             //length in m
Td     = 1.05*10**-4;       //deflecting Torque in kg-m

//calculations
x      = Td/(W*L);
//Td = W*L*sin(theta)
theta  = asin(x);
theta1  =  (theta*180)/(%pi);

//result
mprintf("deflection = %3.0f °",theta1);
