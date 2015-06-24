clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-16.2 Page No.359\n');

//Normal force
W=100;
L=20;
a=4;
N=(W*L)/a;

mprintf('\n Normal force = %f lb.',N);

//Torque friction
f=0.4;
D=12;
Tf=f*N*D/2;

mprintf('\n Torque friction = %f in-lb.',Tf);
