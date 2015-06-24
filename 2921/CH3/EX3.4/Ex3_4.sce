clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-3.4 Page No.46\n');

hp=10;             //[hp] Power transmitted
rpm=1750;          //[rpm] Turning speed
d=0.5;             //[in] Diameter of shaft
L=12;              //[in] Length of shaft
G=11.5*10^6        //[lb/in^2] shear modulus of elasticity
Su=62000;          //[lb/in^2] 

T=63000*hp/rpm;    //[in*lb] Torque transmitted
Z=%pi*d^3/16;      //[in^3] Polar section modulus
Ss=T/Z;            //[lb/in^2] Torsional shear stress

//Note- In the book Z=0.025 in^3 is used instead of Z=0.0245437 in^3

mprintf('\na. Stress in the shaft is %f lb/in^2.',Ss)

J=%pi*d^4/32;      //[in^4] Polar moment of inertia
theta=T*L/(J*G);   //[radians] 

//Note- In the book J=0.0061 in^4 is used instead of J=0.0061359 in^4

mprintf('\nb. The angular deflection of shaft would be %f radians',theta);

SF=3;               //[] Safety factor based on ultimate strength

Zd=T/(0.5*Su/SF);   //[in^3] Polar section modulus required for SF=3
Dd=(16*Zd/%pi)^(1/3); //[in] Diameter of shaft required Z=%pi*d^3/16

mprintf('\nc. Diameter of shaft required is %f in.',Dd);
