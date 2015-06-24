// Exa 2.7
clc;
clear;
close;
// Given data
V=240;// in V
R= 1;// in kΩ
R=R*10^3;// in Ω
Vsrms= V/4;// in V
Vm= sqrt(2)*Vsrms;// in V
V_Ldc= -Vm/%pi;// in V
disp(V_Ldc,"The value of average load voltage in volts is : ")
