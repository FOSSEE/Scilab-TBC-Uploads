//chapter 6
//example 6.8
//Calculate drift velocity of free electrons
//page 149
clear;
clc;
//given
I=100; // in A (current in the wire)
e=1.6E-19; // in C (charge of electron)
A=10; // in mm^2 (cross-sectional area)
n=8.5E28; // in 1/m^3 (density of electron)
//calculate
A=A*1E-6; // changing unit from mm^2 to m^2
v_d=I/(n*A*e);
printf('\nThe drift velocity of free electrons is \tv_d=%1.3E m/s',v_d);
