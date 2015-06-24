// Exa 4.20
clc;
clear;
close;
// Given data
R2 = 100;// in ohm
R1 = 200;// in ohm
R_F = 100;// in k ohm
R_F = R_F * 10^3;// in ohm
R_G = 100;// in ohm
Gain_max = ( 1+((2*R_F)/R_G) ) * (R2/R1);
R = 100;// in  k ohm
R_G1 = 0.01+R;// in k ohm
R_G1 = R_G1 * 10^3;// in ohm
Gain_min = ( 1+((2*R_F)/R_G1) ) * (R2/R1);
disp("The gain can be varied from "+string(Gain_min)+" to "+string(Gain_max))
