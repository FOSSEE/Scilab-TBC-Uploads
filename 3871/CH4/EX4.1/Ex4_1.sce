//===========================================================================
//chapter 4 example 1
clc;
clear all;


//variable decalartion
L     =0.4;             //length of the strip in m
W   = 0.0005;       //width of the strip in m
t     = 0.00008     //thickness in m
E    = 1.2*10^10;   //young's modulus  in kg/m**2
d   = 90;                       //deflection in degrees

//calucaltions
theta    = %pi/(2);         //deflection in radians
T        = ((E*W*(t^3))/(12*L*2))*(%pi);		//torque exerted in Kg-m

//result

mprintf("torque exerted  T = %3.2e Kg-m",T);
