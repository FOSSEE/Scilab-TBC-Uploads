//Example 3// The amplitude 
clc;
clear;
close;
//given data :
n=350;// in Hz
v=330;// in m/s
p=1.293;// in kg/m^3
I=1*10^-6;// in W/m^2
A=sqrt(I/(2*%pi*n^2*p*v));
disp(A,"The amplitude of wave,A(m) = ")
