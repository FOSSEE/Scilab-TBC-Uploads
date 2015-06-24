// Exa 1.3
clc;
clear;
close;
// Given data
G=-10;
Ri= 100;// in kohm
R1= Ri;// in kohm
R1=R1*10^3;// in ohm
// Formula G=-R2/R1
R2= R1*abs(G);// ohm
disp(R1*10^-3,"Value of R1 in kohm is : ")
disp(R2*10^-6,"and value of R2 in Mohm is : ")
