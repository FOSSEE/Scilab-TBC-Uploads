//Exa3.8
clc;
clear;
close;
// given data
n_i=1.5*10^10;// in /cm^3
miu_e=1300;// in cm^2/V-s
miu_h=450;// in cm^2/V-s
e=1.6*10^-19;// in C  (charge of electrons)
sigma_i=n_i*e*(miu_e+miu_h);
disp("Conductivity of silicon (intrinsic) is : "+string(sigma_i)+" /ohm-cm");
N_A=10^18;// in /cm^3
disp("conductivity of the resulting P-type silicon semiconductor")
sigma_p=e*N_A*miu_h;
disp(string(sigma_p)+" /ohm-cm");