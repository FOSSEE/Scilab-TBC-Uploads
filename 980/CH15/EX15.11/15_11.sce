clc;
clear;
format('e',11);
N=3*10^10;
me=9.109*10^-31;
e=1.6*10^-19;
epsilone_0=8.85*10^-12;
Wp=sqrt(N*e^2/(me*epsilone_0));
disp(Wp,"the plasma frequency(in rad/s)");
