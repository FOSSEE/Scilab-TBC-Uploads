// Exa 3.13
clc;
clear;
close;
format('v',6)
// Given data
phi = %pi/6;
// Power factor
powerfactor = cos(phi);// in lag
disp(powerfactor,"The power factor is");
Im = 22;// in A
// The R.M.S value of current 
Irms = Im/sqrt(2);// in A
disp(Irms,"The R.M.S value of current in A is");
omega = 314;// in rad/sec
// omega = 2*%pi*f;
f = omega/(2*%pi);// in Hz
disp(f,"The frequency in Hz is");
