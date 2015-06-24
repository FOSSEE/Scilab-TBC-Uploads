// Exa 8.7
clc;
clear;
close;
format('v',7)
// Given data
l1 = 25;// in cm
l1 = l1 * 10^-2;// in m
miu_o = 4*%pi*10^-7;
miu_r = 750;
a1 = 2.5*2.5*10^-4;// in m
S1 = l1/(miu_o*miu_r*a1);// in AT/Wb
l2 = 40;// in cm
l2 = l2 * 10^-2;// in m
S2 = l2/(miu_o*miu_r*a1);// in AT/Wb
phi2 = 2.5*10^-3;// in Wb
N = 500;
//mmf = phi1*S1 = phi2*S2;
phi1 = (phi2*S2)/S1;// in Wb
phi = phi1+phi2;// in Wb
// Sum of mmf required for AEFB
S_AEFB = S2;// in AT/Wb
mmfforAEFB = S_AEFB*phi;//mmf for AEFB in AT
totalmmf = mmfforAEFB+(phi1*S1);//total mmf in AT
// N*I = totalmmf;
// Calculation of current
I = totalmmf/N;// in A
disp(I,"The current in A is");
