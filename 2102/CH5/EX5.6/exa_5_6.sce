// Exa 5.6
clc;
clear;
close;
// Given data
V1= 5;// in V
IncreaseInVolt= 1.5;// in V
C_T1= 20;// in pF
// Formula C_T= lamda/sqrt(V)
lamda= C_T1*sqrt(V1);
// When
V2= V1+IncreaseInVolt;// in V
C_T2= lamda/sqrt(V2);
disp(C_T1-C_T2,"The decrease in capacitance in pF is : ")
