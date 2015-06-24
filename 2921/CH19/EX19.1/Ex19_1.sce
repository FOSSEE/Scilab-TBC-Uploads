clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-19.1 Page No.417\n');

//Length
F=20;
n=500;
PV=3000;
L1=%pi*F*n/(12*PV);

//Use 7/8-inch or longer bearing

L=7/8;

mprintf('\n Length of bearing = %f in.',L);

//Maximum pressure
A=(3/4)*(7/8);
P=F/A;

mprintf('\n Maximum pressure = %f lb/in^2.',P);

//Maximum velocity
D=3/4;
V=%pi*D*n/12;

mprintf('\n Maximum velocity = %f ft/min.',V);
