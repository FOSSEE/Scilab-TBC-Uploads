clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-18.3 Page No.402\n');
L=1/4;

Dp=1.375;
LA=atan(L/(%pi*Dp));

mprintf('\n Lead angle = %f deg.',LA*180/%pi);

//Torque
phi=14.5*%pi/180;
f=0.15;
F=5800;
Tup=(F*Dp/4)*(cos(phi)*tan(LA)+f)/(cos(phi)-f*tan(LA));

mprintf('\n Torque = %f in-lb.',Tup);

//Power
n=175*4/3;
P=Tup*n/63000;

mprintf('\n Power = %f hp per lead screw.',P)
