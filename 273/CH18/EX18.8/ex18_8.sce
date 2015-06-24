clc;clear;
//Example 18.8
//calculation of Hall voltage

//given values
ND=10^21;//donor density per m^3
B=.5;//magnetic field in T
J=500;//current density in A/m^2
w=3*10^-3;//width in m
e=1.6*10^-19;//charge in C

//calculation


V=B*J*w/(ND*e);//in volts
disp(V*10^3,'Hall voltage in mv is');