// Exa 3.18
format('v',7);clc;clear;close;
// Given data
Kf_true = 1;// true value of form factor
Kf_measured= 1.11;// measured value of form factor
PerError = ((Kf_true-Kf_measured)/Kf_true)*100;//percentage error in the meter reading in %
disp(PerError,"The percentage error in the meter reading in % is");
