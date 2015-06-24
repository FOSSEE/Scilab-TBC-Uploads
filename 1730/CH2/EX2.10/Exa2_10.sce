//Exa10
clc;
clear;
close;
//given data
miu_e=0.17;//in m^2/V-s
miu_h=0.035;//in m^2/V-s
nita_i=1.1*10^16; //in /m^3
e=1.6*10^-19;// in C (electron charge)
// Intrinsic conductivity,
sigma_i=(nita_i*e)*(miu_e+miu_h);
IntrinsicResistivity=1/sigma_i;
disp("Intrinsic resistivity is : "+string(IntrinsicResistivity)+" ohm-meter");
