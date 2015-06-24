clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-18.1 Page No.399\n');

//Torque
Dp=(1.5+1.208)/2;
F=5800;
L=1/3;
f=0.15;

Tup=(F*Dp/4)*(L+%pi*f*Dp)/(%pi*Dp-f*L);

mprintf('\n Torque up = %f in-lb.',Tup);
