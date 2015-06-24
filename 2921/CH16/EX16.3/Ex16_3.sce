clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-16.3 Page No.360\n');

//For alpha=20 deg.
alpha=20*(%pi/180);
f=0.35;
rm=12/2;
Fa=75;
Tf=(f*rm*Fa)/(sin(alpha)+f*cos(alpha));

mprintf('\n Torque capacity (alpha=20 deg.) = %f in-lb.',Tf);

//For alpha=10 deg.
alpha=10*(%pi/180);
Tf=(f*rm*Fa)/(sin(alpha)+f*cos(alpha));

mprintf('\n Torque capacity (alpha=10 deg.) = %f in-lb.',Tf);
