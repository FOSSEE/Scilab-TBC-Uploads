// Exa 8.6
clc;
clear;
close;
// Given data
R_f = 0;// in V
R1 = 2;// in kohm
R1 = R1 * 10^3;// in ohm
A_vmin = (1+(R_f/R1));
disp(A_vmin,"The minimum closed loop voltage gain is");
R_f1 = 100;// in kohm
R_f1 = R_f1 * 10^3;// in ohm
A_vmax = (1+(R_f1/R1));
disp(A_vmax,"The maximum closed loop voltage gain is");
