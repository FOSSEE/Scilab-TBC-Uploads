//Exa3.7
clc;
clear;
close;
// given data
rho_i=0.47;// in ohm-meter
sigma_i=1/rho_i;
miu_e=0.39;// in m^2/V-s
miu_h=0.19;// in m^2/V-s
e=1.6*10^-19;// in C

// since sigma_i=n_i*e*(miu_e+miu_h);
n_i=sigma_i/(e*(miu_e+miu_h));
// so Density of electrons = Intrinsic Concentration,n_i
disp("Density of electons is :"+string(n_i)+" /m^3");
E=10^4;// in V/m
v_n=miu_e*E;
disp("Drift velocity of electrons is : "+string(v_n)+" m/s");
v_h=miu_h*E;
disp("Drift velocity of holes is : "+string(v_h)+" m/s");