// Exa 3.2
clc;
clear;
close;
format('v',7)
// Given data
Im = 141.4;// in A
t = 3;// in ms
t = t * 10^-3;// in sec
disp(Im,"The maximum value of current in A is");
omega = 314;// in rad/sec
// omega = 2*%pi*f;
f = round(omega/(2*%pi));// in Hz
disp(f,"The frequency in Hz is");
T = 1/f;// in sec
disp(T,"The time period in sec is");
i = 141.4 * sin(omega*t);// in A
disp(i,"The instantaneous value in A is");
