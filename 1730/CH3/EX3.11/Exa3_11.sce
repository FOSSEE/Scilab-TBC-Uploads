//Exa3.11
clc;
clear;
close;
// given data
k_desh=1.38*10^-23;// in J degree^-1
e=1.602*10^-19;// in C
miu_e=3600;// in cm^2/V-s
miu_h=1700;// in cm^2/V-s
T=300;// in K
D_e=miu_e*k_desh*T/e;
disp("Diffusion constant of electrons is : "+string(D_e)+" cm^2/s");
D_h=miu_h*k_desh*T/e;
disp("Diffusion constant of holes is : "+string(D_h)+" cm^2/s");
