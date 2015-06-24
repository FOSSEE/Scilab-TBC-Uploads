clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-6.1 Page No.120\n');

As=0.334;              //[in^2] Tensile stress area (Table 6.1)
Sp=85000;              //[lb/in^2] Proof strength (Table 6.3)
D=3/4;                 //[in] Nominal diameter of thread

Fi=0.85*As*Sp;         //[lb] Desired intial preload
C=0.2;                 //[] Torque coefficient

T=C*D*Fi;              //[in*lb] Torque

mprintf('\n The required torque is %f lb*in.',T);
