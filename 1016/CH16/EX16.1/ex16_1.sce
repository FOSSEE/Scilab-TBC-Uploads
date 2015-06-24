clc;clear;
//Example 16.1

//given data
fo=9*10^6;//frequency in Hz
m=6.643*10^-27;//mass in kg
pi=3.14;//constant 
e=1.6*10^-19;//the charge on electron in C

//calculations
Q=2*e;
B=fo*2*pi*m/Q;
disp(B,'magnetic flux density in Wb/m^2')