// Exa 5.19
clc;
clear;
close;
format('v',6)
// Given data
dAf_byAf = 10/100;
dAbyA = 10;
A = 1000;
// dAf_byAf = dAbyA*(1/(1+(A*Beta)));
// The required feed back 
Beta = ((dAbyA/dAf_byAf)-1)/A;
disp(Beta,"The required feed back is");
Af = A/(1+(A*Beta));// closed loop voltage gain 
disp(Af,"The closed loop voltage gain is");
