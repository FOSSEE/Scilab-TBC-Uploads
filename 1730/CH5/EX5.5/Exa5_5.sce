//Exa 5.5
clc;
clear;
close;
// given data
P_e1=1600;// in watts
B_max1=1.2;// in T
f1=50;// in Hz
B_max2=1.5;// in T
f2=60;// in Hz
// P_e propotional to B_max^2*f^2, so
P_e2=P_e1*(B_max2/B_max1)^2*(f2/f1)^2
disp("Eddy current loss is : "+string(P_e2)+" watts");
