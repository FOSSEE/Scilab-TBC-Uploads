// Exa 3.4
clc;
clear;
close;
format('v',7)
// Given data
Pe1 = 1600;// in W
Bmax1 = 1.2;// in T
f1 = 50;// in Hz
Bmax2 = 1.5;// in T
f2 = 60;// in Hz
Pe2 = Pe1*(Bmax2/Bmax1)^2*(f2/f1)^2;// in W
disp(Pe2,"The eddy current loss in W is");
