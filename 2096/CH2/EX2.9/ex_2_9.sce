
//Example 2.9 // voltage
clc;
clear;
close;
//given data :
Va=800; // in volts
B=1.8*10^-4; // in Wb/m^2
d=.01; // in m
m=9.109*10^-31; // in kg
e=1.602*10^-19;
A=sqrt(e/(2*m*Va));
C=A*B;
F=1/(2*d*Va);
Vd=C/F;
disp(Vd,"voltage,Vd(V)")
