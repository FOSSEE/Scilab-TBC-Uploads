// Example 5.11
clc;
clear;
close;
// Given data
format('v',6);
R= 1*10^3;// in Ω
C= 4.7*10^-6;// in F
omega= 1/(R*C);// radians/second
f= omega/(2*%pi);// in Hz
disp(f,"The frequency of oscillation in Hz is : ")


