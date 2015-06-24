clc;clear;
//Example 12.1
//calculation of natural frequency,magnetostriction

//given values

l=40*10^-3;//length of pure iron rod
d=7.25*10^3;//density of iron in kg/m^3
Y=115*10^9;//Young's modulus in N/m^2 

//calculation
f=(1*sqrt(Y/d))/(2*l);
disp(f*10^-3,'the natural frequency(in kHz) is');
