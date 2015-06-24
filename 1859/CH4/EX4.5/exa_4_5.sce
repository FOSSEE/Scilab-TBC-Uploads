// Exa 4.5
clc;
clear;
close;
// Given data
Im= 1;// in mA
Im=Im*10^-3;// in amp
Rm= 100;// in ohm
V=1.2;// in volt
R1= V/Im;// in ohm
disp(R1*10^-3,"Resistance in kohm")
Vout= Im*(Rm+R1);// in volt
disp(Vout,"Output voltage in volt")
