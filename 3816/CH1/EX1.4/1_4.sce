clc;
clear;
B=0.50;//Mean gap flux density
Ys=40;//Slot spacing
Cs=(35*12);//Conductor section
J=33;//Current density
//case:1
disp('To find the tangential force per length of gap periphery and per unit axial length of the machine:')
A=(Cs*J*1000)/Ys;
disp(A,'The specific electric loadings is:')
Fe=B*A;
disp(Fe,'The specific force is:')
