clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-6.4 Page No.124\n');

Dp=20;                 //[in] Pressure vessel head diameter
Ds=1.25;               //[in] Stud diameter
Ls=6;                  //[in] Stud length
Af=50;                 //[in^2] Clamped area of flanges

E=30*10^6;             //[lb/in^2] Modulus of elasticity
C=0.15;                //[] Torque coefficient
Si=120000;             //[lb/in^2] Proof strength (Table 6.3)
A=1.073;               //[in^2] Tensile stress area (Table 6.1)

Fi=0.9*Si*A;           //[lb] Desired intial load

T=C*Ds*Fi;             //[lb*in] Torque

mprintf('\n1. The required torque is %f lb*in.',T);

Pp=500;                 //[lb/in^2] Pressure inside the pressure vessel
Ap=%pi*Dp^2/4;          //[in^2] Pressure vessel head cross section area

Kb=A*E/Ls;              //[lb/in] Stiffness per stud
Kf=Af*E/Ls;             //[lb/in] Stiffness per flange
Fe=Pp*Ap;               //[lb] Force on pressure vessel head

Ft=10*Fi+(10*Kb/(10*Kb+Kf))*Fe;  //[lb] Total load on the bolt

mprintf('\n2. The total load on the bolt is %f lb.',Ft);
