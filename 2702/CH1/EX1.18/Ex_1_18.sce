// Exa 1.18
clc;
clear;
close;
// Given data
R1=12;// in kohm
Rf=360;// in kohm
V1= -0.3;// in V
Vo= (1+Rf/R1)*V1;// in V
disp(Vo,"Output voltage result in volts is : ")

// Part(b)
Vo= 2.4;// in V
// We know, Vo= (1+Rf/R1)*V1
V1= Vo/(1+Rf/R1);
disp(V1*10^3,"Input voltage in mV to result in an output of 2.4 Volt is")
