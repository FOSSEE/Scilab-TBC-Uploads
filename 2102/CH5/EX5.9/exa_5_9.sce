// Exa 5.9
clc;
clear;
close;
// Given data
V1= 5;// in V
V2 = V1+1;// in V
C_T1= 20;// in pF
// C_T2/C_T1 = sqrt(V1/V2)
C_T2= C_T1* sqrt(V1/V2);
disp(C_T2,"The capacitance for 1-V increase in bias in pF is : ")
disp(C_T1-C_T2,"Therefore, the decrease in capacitance in pF is :")

// NOTE: The answer in the book is wrong due to calculation error to evalaute the value of C_T2.
