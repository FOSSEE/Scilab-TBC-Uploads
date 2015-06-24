// Exa 6.20
clc;
clear;
close;
format('v',5)
// Given data
A = 300;// voltage gain
Rin = 1.5;// in k ohm
Rout = 50;// in k ohm
Beta = 1/15;// unit less
Af = A/(1+(Beta*A));// unit less
disp(Af,"The voltage gain is");
Rinf = (1+(Beta*A))*Rin;// in k ohm
disp(Rinf,"The input resistance in k ohm is");
Routf = Rout/(1+(Beta*A));// in k ohm
disp(Routf,"The output resistance in k ohm is");
