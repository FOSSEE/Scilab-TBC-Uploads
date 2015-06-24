// Exa 4.2
clc;
clear;
close;
format('v',6)
// Given data
R = 100;// in ohm
i= '3*cos(omega*t)';// in A
A= R*3^2;// assumed
disp("Instantaneous power taken by resistor in watts is : ")
disp(string(A/2)+" (1+cos(2*omega*t))")
P= R*3^2/2*(1+cos(%pi/2));// in watts
disp(P,"The average power in watts is : ")
