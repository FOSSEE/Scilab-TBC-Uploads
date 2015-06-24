clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-15.1 Page No.332\n');

//Torque
P=5;
n=1750;
T=63000*P/n;

mprintf('\n Torque = %f in-lb.',T);

//Length of key for shear
Su=61000;
Ss=0.5*Su;
b=0.125;
D=0.5;
Ls1=2*T/(Ss*b*D);
SF=2.5;

Ls=SF*Ls1;

mprintf('\n Length of key for shear = %f in.',Ls);

//Length of key for compression
Sc=51000;
t=0.125;
Lc1=4*T/(Sc*t*D);

Lc=SF*Lc1;

mprintf('\n Length of key for compression = %f in.',Lc);
