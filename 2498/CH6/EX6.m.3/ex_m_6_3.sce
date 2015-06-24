// Exa Misc. 6.3
clc;
clear;
close;
format('v',6)
// Given data
R1min = 10;// in k ohm
R1max = 20;// in k ohm
R_F = 300;// in k ohm
// The closed loop voltage gain corresponding to R1min,
Ao_min = -R_F/R1min;
// The closed loop voltage gain corresponding to R1max,
Ao_max = -R_F/R1max;
disp("The range of voltage gain is : "+string(Ao_max)+" to "+string(Ao_min));
