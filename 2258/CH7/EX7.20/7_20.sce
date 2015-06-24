clc();
clear;
// To calculate mew and n
RH=3.66*10^-4;
e=1.6*10^-19;
rho_n=8.93*10^-3;
n=1/(RH*e);
mew_e=RH/rho_n;
printf("n per m^3 is");
disp(n);
printf("mew_e is %f m^2/V",mew_e);
