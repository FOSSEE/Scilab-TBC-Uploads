
//Example 7.12 // voltage
clc;
clear;
close;
//given data :
Rh=3.55*10^-4; // hall coefficient in m^3/C
I=0.015; // current in A
A=15*10^-6; // area in m^2
B=0.48; // flux density in Wb/m^2
Jx=I/A;
Ey=Rh*B*Jx;
V=Ey*A*10^3;
disp(V,"voltage between contact,V(V) = ")
