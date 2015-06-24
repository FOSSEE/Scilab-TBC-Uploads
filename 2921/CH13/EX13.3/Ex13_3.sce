clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-13.3 Page No.286\n');

Np=24;
Ng=36;
Pd=8;
Yp=33.7*%pi/180;
Yg=56.3*%pi/180;
theta=14.5*%pi/180;

//Pitch diameter
Dp=Np/Pd;

mprintf('\n Pitch diameter = %f in.',Dp);

//Transmitted force
n=2200;
P=8;
T=63000*P/n;

Ft=2*T/Dp;

mprintf('\n Transmitted force = %f lb.',Ft);

//Separating force - Pinion
Fnp=Ft*tan(theta)*cos(Yp);

mprintf('\n Separating force-Pinion = %f lb.',Fnp);

//Separating force-Gear
Fng=Ft*tan(theta)*cos(Yg);

mprintf('\n Separating force = %f lb.',Fng);

//Axial force-Pinion
Fap=Ft*tan(theta)*sin(Yp);

mprintf('\n Axial force-Pinion= %f lb.',Fap);

//Axial force-Gear
Fag=Ft*tan(theta)*sin(Yg);

mprintf('\n Axial force-Gear = %f lb.',Fag);
