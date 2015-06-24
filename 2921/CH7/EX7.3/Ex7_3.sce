clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-7.3 Page No.141\n');

W=3000;                //[lb] Weight of automobile
L=40*12;               //[in] Length of the beam
I=64.2;                //[in^4] Moment of inertia of the beam
Sy=48000;              //[lb/in^2] Yield strength of the beam
c=8/2;                 //[in] Distance from the outermost fiber to neutral axis
E=30*10^6;             //[lb/in^2] Modulus of elasticity
g=32.2;                //[ft/s^2] Acceleration due to gravity

M=I*Sy/c;              //[lb*in] Moment at which beam will yield
F=4*M/L;               //[lb] Force at which beam will yield

Delta=F*L^3/(48*E*I);  //[in] Deflection
KE=F*Delta/2;          //[lb*in] Kinetic energy

V=sqrt(2*g*KE/W);      //[in/s] Velocity
V=V/5280*3600;         //[miles/hr] Velocity

mprintf('\n At %f miles/hr velocity the beam will yield.',V);
