// Exa 11.1
clc;
clear;
close;
format('v',6)
// Given data
w=poly(0,'w');
// For sustained oscillation,
w= 4*w*10^6-w^3;
w= roots(w);
w= w(1);// in rad/sec
f= round(w/(2*%pi));// in Hz
disp(f,"The frequency of oscillation in Hz is : ")
disp("Hence the system will oscillate")
