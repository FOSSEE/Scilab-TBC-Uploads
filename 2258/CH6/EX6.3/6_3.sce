clc();
clear;
// To calculate the dielectric constant of the material
N=3*10^28;   //atoms per m^3
alpha_e=10^-40;   //farad m^2
epsilon_0=8.854*10^-12;    //f/m
epsilon_r=1+(N*alpha_e/epsilon_0);
printf("dielectric constant of the material is %f",epsilon_r);
