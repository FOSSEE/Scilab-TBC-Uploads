clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-12.5 Page No.263\n');

Su=55*10^3;
Sn=0.5*Su;

Np=24;
Pd=12;
Dp=Np/Pd;

mprintf('\n Pitch circle diameter = %f in.',Dp);

n=1800;
Vm=%pi*Dp*n/12;

mprintf('\n Surface speed = %f ft/min.',Vm);

b=3/4;
Y=0.302;
Fs=Sn*b*Y/Pd;

mprintf('\n Allowable stress = %f lb.',Fs);

Fd=Fs;
Ft=600*Fd/(600+Vm);

mprintf('\n Force transmitted = %f lb.',Ft);

T=Ft*Dp/2;

P=T*n/63000;

mprintf('\n Power transmitted = %f hp.',P);

//Compared to catalog
hp_catalog=4.14;

Nsf=P/hp_catalog;

mprintf('\n Safety factor = %f .',Nsf);
