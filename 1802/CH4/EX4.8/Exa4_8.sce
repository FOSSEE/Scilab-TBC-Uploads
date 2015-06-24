//Exa 4.8
clc;
clear;
close;
//Given Data :
format('v',9);
d=300;//in cm(spacing)
r=1;//in cm
//Formula : L=10^-7*[mu_r+4*log10(d/r)];//in H/m
//Part (i) : mu_r=1
mu_r=1;//constant
L=10^-4*[mu_r+4*log(d/r)];//in H/m
disp(L*1000,"Loop inductance per km for copper(in mH) :");
//Part (ii) : mu_r=100
mu_r=100;//constant
L=10^-4*[mu_r+4*log(d/r)];//in H/m
disp(L*1000,"Loop inductance per km for steel(in mH) :");