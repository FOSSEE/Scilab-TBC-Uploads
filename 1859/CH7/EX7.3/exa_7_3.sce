// Exa 7.3
clc;
clear;
close;
// Given data
C2= 0.2;// in micro F
Ratio21= 10/1;// resistance ratio R2/R1
C1= C2*Ratio21;// in micro F
Ratio21_desh= 1/10;
C1_desh= C2*Ratio21_desh;// in micro F
disp("So range of measurement of unknown capacitance is "+string(C1_desh)+" micro F to "+string(C1)+" micro F")
