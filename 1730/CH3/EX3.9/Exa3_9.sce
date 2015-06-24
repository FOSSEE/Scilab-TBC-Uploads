//Exa3.9
clc;
clear;
close;
// given data
n_i=2.5*10^13;// in /m^3
miu_e=3800;// in cm^2/V-s
miu_h=1800;// in cm^2/V-s
e=1.6*10^-19;// in C  (charge of electrons)
sigma_i=n_i*e*(miu_e+miu_h);
disp("Intrinsic conductivity is : "+string(sigma_i)+" /ohm-cm");
// Let Number of germanium atoms/cm^3 = no_g
no_g=4.41*10^22;
// since Donor impurity = 1 donor atom / 10^7 germanium atoms, so 
DonorImpurity=10^-7;
N_D=no_g*DonorImpurity;
n=N_D; // (approx)
p=n_i^2/N_D;
// so
sigma_n=e*N_D*miu_e;
disp("conductivity in N-type germanium semiconductor is : "+string(sigma_n)+" /ohm-cm");
