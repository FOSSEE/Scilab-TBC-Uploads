clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-13.6 Page No.294\n');

//Efficiency
LA=4.77*%pi/180;
f=0.03;
e=tan(LA)*(1-f*tan(LA))/(f+tan(LA));

mprintf('\n Efficiency = %f .',e);

//Torque input
hp=5;
n=1750;
T=63000*hp/n;

mprintf('\n Torque input = %f in-lb.',T);

Vr=60;
Tout=0.73*Vr*T;

mprintf('\n Output torque = %f in-lb.',Tout);
