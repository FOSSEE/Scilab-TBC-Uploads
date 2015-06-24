// Exa 7.1
clc;
clear;
close;
// Given data
H1 = 2600;// in kJ/kg
H2 = 1850;// in kJ/kg
g = 9.81;
C1 = 10;// in meter/second
C2 = 20;// in meter/secon
Q = 120;// in kJ/kg
Z1 = 30;// in meter
Z2 = 10;// in meter
W = g*(Z1-Z2)/1000+H1-H2+(C1^2-C2^2)/(2*1000)+Q
disp(W,"The work done in kJ/kg is");
