//===========================================================================
//chapter 7 example 9
clc;clear all;

//variable declaration
Np          = 500;          //number of turns on moving coil 
Ip          = 0.05;         //current through moving coil in A
B           = 0.012;           // flux density in the air gap in T
d           = 0.03;             //diameter in m
theta1      = 30;
theta2      = 90;
x           = 0.866;                //power factor cos(phi) 

//calculations

A       = (%pi/4)*(d^2);            //area  of x-section of moving coilin m^2
phimax      = B*A;              //maximum flux through moving coil in Wb
//Mmax        = (phimax*Np)/Ic
//Mmax*Ic       = X     = phimax*Np
X        = (phimax*Np);
//T         = Ip*Ic*Mmax*cos(phi)*sin(theta)
//T         = Ip*Ic*(X/Ic)*cos(phi)*sin(theta)
//T         = Ip*(X)*cos(phi)*sin(theta)
T1           = Ip*X*x*sin(theta1*%pi/180);
T2           = Ip*X*x*sin(theta2*%pi/180);

//result
mprintf("torque in when 30° = %3.4e  N-m",T1);
mprintf("\ntorque in when 90° = %3.4e  N-m",T2);

