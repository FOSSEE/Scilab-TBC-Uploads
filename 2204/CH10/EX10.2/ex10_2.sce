// EXa 10.2
clc;
clear;
close;
// Given data
V_sat = 12;// in V
V_H = 6;// in V
R1 = 10;// in k ohm
R1 = R1 * 10^3;// in ohm
// Formula V_H= R1/(R1+R2)*(V_sat-(-V_sat)) and Let
V = V_H/(V_sat-(-V_sat));// in V (assumed)
R2= (R1-V*R1)/V
disp(R1*10^-3,"The value of R1 in kΩ is");
disp(R2*10^-3,"The value of R2 in kΩ is");
