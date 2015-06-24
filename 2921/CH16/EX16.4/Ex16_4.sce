clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-16.4 Page No.361\n');

//Stopping rate
V=60*5280/3600;
Va=0.5*V;
D=400;
t=D/Va;
a=V/t;

mprintf('\n Stopping rate = %f ft/sec^2.',a);

//Stopping force
W=40000;
g=32.2;
F=W*a/g;

//Torque
r=36/2;
T=F*r;

mprintf('\n Torque = %f in-lb.',T);

//For each wheel
T=T/10;

//Braking normal force
rm=10;
f=0.4;
N=T/(f*rm);

mprintf('\n Braking normal force = %f lb.',N);

//Note-There is an error in the answer given in textbook
