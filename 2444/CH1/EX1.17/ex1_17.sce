// Exa 1.17
clc;
clear;
close;
format('v',7)
// Given data
Je = 360;// in A/cm^2
T = 300;// in K
d = 1.5;// in mm
d = d * 10^-1;// in cm
e = 1.6*10^-19;// in C
del = 2*10^18-5*10^17;// assumed
dnBYdx = del/d;
De = Je/(e*dnBYdx);// in cm^2/s
V_T = T/11600;
miu_e = De/V_T;// in cm^2/V-s
disp(miu_e,"The mobility of electrons in cm^2/V-s is");
