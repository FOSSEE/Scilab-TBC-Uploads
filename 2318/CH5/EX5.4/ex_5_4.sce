//Example 5.3.b: Flux density
clc;
clear;
close;
//given data :
I1=5;// in A
I2=10;// in A
N1=100;// number of turns
N2=200;//number of turns
l=30*10^-2;// in m
R=200;// in ohm
theta1=45;// in degree
theta2=30;// in degree
As=0.3*10^-4;// in m^2
M=100*10^-3;// in H
k=(2*M*I1)/(R*theta1);
H=(N1*I2)/l;
fi=(R*k*theta2)/(2*N2);
B=fi/As;
mu=H/B;
disp(B,"Flux density,B(Wb/m^2) = ")
disp(mu,"permeability,mu(H/m) = ")
//flux density is calculed wrong in the textbook
