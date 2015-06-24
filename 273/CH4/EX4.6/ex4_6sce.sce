clc;clear;
//Example 4.6
//Magnetostatic deflection
//given values
D=.03;//deflection in m
m=9.1*10^-31;//in kg
e=1.6*10^-19;//in C
L=.15;//distance between CRT and anode in m
l=L/2;
V=2000;//in voltsin wb/
B=D*sqrt(2*m*V)/(L*l*sqrt(e));//in wb/m^2
disp(B,'transverse magnetic field acting (in wb/m^2)is:')