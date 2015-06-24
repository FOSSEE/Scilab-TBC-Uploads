// Exa 6.24
clc;
clear;
close;
format('v',6)
// Given data
A = 100;//mid frequency gain
BW = 200;// in kHz
Beta = 5/100;// feedback ratio
BWf = (1+(Beta*A))*BW;// in kHz
BWf = BWf * 10^-3;// in MHz
disp(BWf,"The bandwidth with feedback in MHz is");
Af = A/(1+(Beta*A));// unit less
disp(Af,"The gain with feedback is");
BWf = 1000;// in kHz
Beta = ((BWf/BW)-1)/A*100;//feedback ratio in %
disp(Beta,"The amount of feedback in % is");
