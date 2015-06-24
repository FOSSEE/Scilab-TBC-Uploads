// Exa 6.11
clc;
clear;
close;
// Given data
P=500;// in ohm
S=P;
Q=S;
R=P;
R_Th=R;// in ohm
Rg=100;// in ohm
E=10;// in volt
Ig= 1;// in nA
Ig=Ig*10^-9;//in amp
// Formula Ig= E_Th/(R_Th+Rg) and E_Th= E*del_R/(4*R) so
// Ig= (E*del_R/(4*R))/(R_Th+Rg) and
del_R= Ig*(R_Th+Rg)*4*R/E;// in ohm
del_R= del_R*10^3;//in mohm
disp(del_R,"The smallest change in resistance in mohm")
