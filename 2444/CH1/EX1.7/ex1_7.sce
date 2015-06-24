// Exa 1.7
clc;
clear;
close;
format('v',9)
// Given data
R = 1;// in k ohm
R = R * 10^3;// in ohm
L = 400;// in µm
L = L * 10^-6;// in m
W = 20;// in µm
W = W * 10^-6;// in m
a = L*W;// in m^2
l = 4;// in mm
l = l * 10^-3;// in m
rho_i = (R*a)/l;// in ohm-m
sigma_i = 1/rho_i;// in S/m
e = 1.6*10^-19;// in C
miu_h = 480;// in cm^2/V-s
miu_h = miu_h * 10^-4;// in m^2/V-s
// sigma_i = p*e*miu_h;
p = sigma_i/(e*miu_h);// in /m^3
disp(p,"The concentration of acceptor atom in /m^3 is");
