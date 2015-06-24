clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-16.1 Page No.358\n');

//Torque capacity
f=0.3;
N=120;
ro=12;
ri=9;
Tf=f*N*(ro+ri)/2;

mprintf('\n Torque capacity = %f in-lb.',Tf);
n=2000;
//Power

Pf=Tf*n/63000;

mprintf('\n Power = %f hp.',Pf);
