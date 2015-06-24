clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-17.5 Page No.388\n');

//Deflection
D=0.75;
E=30*10^6;
L=15;
F=96;
I=%pi*D^4/64;

delta=F*L^4/(48*E*I);
delta=floor(100*delta)*10^-2;
Nc=188/sqrt(delta);

mprintf('\n Critical speed = %f rpm.',Nc);
