//Example 4.12.1: resistance
clc;
clear;
close;
//given data :
format('v',5)
Rm=500;//in ohm
E_rms=50;// in V
E_dc=(sqrt(2)*E_rms)/(%pi/2);
Im=1*10^-3;//in A
R=E_dc/Im;
Rs=(R-Rm)*10^-3;
disp(Rs,"the resistance,Rs(kilo-ohm) = ")
