// Exa 2.12
format('v',7);clc;clear;close;
// Given data
Am = 111.5;//measured value in V
Per_Error = 5.3;// %e in %
// Per_Error = ((At-Am)/At)*100;
At = Am/(1 - (Per_Error/100));//true value of voltage  in V
disp(At,"The true value of voltage in V is");
