// Exa 6.20
clc;
clear;
close;
// Given data
del_VDS = 1.5;// in V
del_ID = 120 * 10^-6;// in A
r_d = del_VDS/del_ID;// in ohm
r_d = r_d * 10^-3;// in kohm
disp(r_d,"The drain resistance of the JFET in K ohm is");
