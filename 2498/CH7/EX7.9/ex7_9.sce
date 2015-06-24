// Exa 7.9
clc;
clear;
close;
format('v',6)
// Given data
delV_DS = 1.5;// in V
delI_D = 120;// in µA
delI_D = delI_D*10^-6;// in A
// The ac drain resistance of the JFET 
r_d = delV_DS/delI_D;// in ohm
r_d= r_d*10^-3;// in k ohm
disp(r_d,"The ac drain resistance of the JFET in k ohm is");
