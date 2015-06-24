//Example 2.13 // calculate the unknown resistance
clc;
clear;
close;
//given data :
R1=100.24; // in ohm
R2=200; // in ohm
R3=100.03; // in micro-ohm
l=100.31; // in ohm
m=200; // in ohm
Ry=680; // in micro-ohm
A=(R1*R3*10^-6)/R2;
B=(m*Ry*10^-6)/(l+m+Ry*10^-6);
C=((R1/R2)-(l/m));
Rx=(A+B*C)*10^6;
disp(Rx,"the unknown resistance,Rx(micro-ohm) = ")
