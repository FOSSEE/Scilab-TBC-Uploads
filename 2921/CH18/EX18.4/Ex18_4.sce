clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-18.4 Page No.405\n');

//Torque
L=0.5;
F=5800/2;
T=0.177*F*L;

mprintf('\n Torque = %f in-lb.',T);

//Power
n=175*2/3;
P=T*n/63000;

mprintf('\n Power = %f hp.',P);
