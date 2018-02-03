//===========================================================================
//chapter 5 example 15
clc;clear all;

//variable decalartaion
C     = 1*10**-7;           //spring torsion constant in N-m/degree
I      = 10;            //current in A
theta   = 110;              //full-deflection in  °
L1        = 2*10**-6;       //initial inductance in uH

//calculations
Td        =C*theta;             //full-scale deflceting torque in N-m
//dM/dtheta  =x
x  = Td/(I^2);
theta1  = ((theta*%pi)/(180));    //converstion of radians to degrees
dM     = x*theta1;          //change in inductance in uH
M      = L1+dM;         //total inductance in uH

//result

mprintf("total inductance = %3.3f uH",(M*10^6));
