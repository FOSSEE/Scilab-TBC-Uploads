// Exa 2.1
format('v',6);clc;clear;close;
// Given data
// Values of measurements
x1 = 49;
x2 = 51;
x3 = 52;
x4 = 50;
x5 = 49;
n = 5;// numbers of reading
Xn_bar = (x1+x2+x3+x4+x5)/n;// average value for the set of measurements
// For n = 3
P = 1 - abs( (x3-Xn_bar)/x3);// the value of third measurement
P = P * 100;// in %
disp(P,"The precision of the 3rd measurement in % is");
