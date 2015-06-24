// Exa 2.24
format('v',7);clc;clear;close;
// Given data
At = 6.54;//true value in A
Am = 6.7;//measured value in A
AbsError = At-Am;// absolute error
PerError= ((At-Am)/At)*100;// percentage error
disp(PerError,"The error in % is");
