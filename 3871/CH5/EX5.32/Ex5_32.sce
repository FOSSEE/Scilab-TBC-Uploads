//===========================================================================
//chapter 5 example 32

clc;
clear all;

//variable declaration
K       = 0.0981*10^-6;         
theta      = 80;            //full scale of deflection in ° 
V           = 1000;         //voltage in V
C           = 10*10^-12;            //capacitance in F

//calculations
//x     =dC/dtheta = (2*K*theta)/V^2
x       = (2*K*theta)/V^2;          //rate of change of capacitance 
dC      = x*(theta/180)*%pi;
C1      = C+dC;

//result
mprintf("capacitance when reading 1kV = %3.3e F",C1);



