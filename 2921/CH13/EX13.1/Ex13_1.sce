clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-13.1 Page No.280\n');

//Pitch-line velocity
Nt=24;
Pd=12;
Dp=Nt/Pd;
n=1750;
Vm=%pi*Dp*n/12;

mprintf('\n Pitch-line velocity = %f ft/min.',Vm);

//Transmitted force
hp=5;
Ft=33000*hp/Vm;

mprintf('\n Transmitted force = %f lb.',Ft);

//Axial force
psi=15*%pi/180;
Fa=Ft*tan(psi);

mprintf('\n Axial force = %f lb.',Fa);

//Separating force
theta=20*%pi/180;
psit=atan(tan(theta)/cos(psi));
Fn=Ft*tan(psit);

mprintf('\n Separating force = %f lb.',Fn);
