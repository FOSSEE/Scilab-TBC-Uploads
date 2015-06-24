clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-6.2 Page No.121\n');

L=5;                   //[in] Length of engagement
E=30*10^6;             //[lb/in^2] Modulus of elasticity
As=0.334;              //[in^2] Tensile stress area (Table 6.1)
Sp=85000;              //[lb/in^2] Proof strength (Table 6.3)
Fi=0.85*As*Sp;         //[lb] Desired intial preload

Delta=Fi*L/(As*E)      //[in] Elongation

pitch=0.1;             //[in] Pitch for 3/4 UNC
TA=Delta*360/pitch;    //[Degree] Torque angle

mprintf('\n The angle of rotation needed is %f degree.',TA);
