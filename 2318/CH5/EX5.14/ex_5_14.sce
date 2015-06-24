//Example 5.14 // flux density
clc;
clear;
close;
//given data :
R=200+50;// in ohm
k=100*10^-6;// in coulomb
theta=80;// divisions
A=55*10^-4;// in m^2
N=1500;// turns
B=(R*k*theta)/(2*A*N);
disp(B,"The flux density,B(Wb/m^2) = ")
