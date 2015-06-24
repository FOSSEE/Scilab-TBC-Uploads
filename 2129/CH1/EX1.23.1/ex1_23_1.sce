//Exa 1.23.1
clc;
clear;
close;
//Given data
l= 0.50*10^-2;// width of ribbon in m
d= 0.10*10^-3;// thickness of ribbon in m
A= l*d;// area of ribbon in m^2
B = 0.8;// in Tesla
D = 10.5;//density in gm/cc
I = 2;// in amp
q = 1.6 * 10^-19;// in C
n=6*10^28;// number of elec. per m^3
V_H = ( I * B * d)/(n * q * A);// in volts
disp(V_H,"The hall Voltage produced in volts is");

