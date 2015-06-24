clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-12.1 Page No.254\n');

P=5;
n=1725;
T=63000*P/n;

//Pitch circle diameter
Np=20;
Pd=8;
Dp=Np/Pd;

mprintf('\n Pitch circle diameter = %f in.',Dp);

//Transmitted force
Ft=2*T/Dp;

mprintf('\n Transmitted force = %f lb.',Ft);

//Separating force
theta=20*%pi/180;
Fn=Ft*tan(theta);

mprintf('\n Separating force = %f lb.',Fn);

//Maximum force
Fr=Ft/cos(theta);

mprintf('\n Maximum force = %f lb.',Fr);
