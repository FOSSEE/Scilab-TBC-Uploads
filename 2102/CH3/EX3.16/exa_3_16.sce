// Exa 3.16
clc;
clear;
close;
// Given data
I= 2;// in mA
I=I*10^-3;// in A
V_T= 25;// in mV
V_T= V_T*10^-3;// in V
nita= 1;
r_F= nita*V_T/I;// in Ω
disp(r_F,"The dynamic resistance of a diode in Ω is :")
