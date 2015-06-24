//Example 8// Acoustic intensity level
clc;
clear;
close;
//given data :
Pr=3;// in W
r=15;// in m
I=Pr/(4*%pi*r^2);// in W/m^2
I0=10^-12;// in W/m^2
L=round(10*log10(I/I0));
disp(L,"Acoustic intensity level,L(dB) = ")
