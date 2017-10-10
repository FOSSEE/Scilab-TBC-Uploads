//Estimate the Rate constant for a diffusion controlled reaction in water

//Example 12.3

clc;

clear;

R=8.314;  //Gas constant in J K^-1 mol^-1

T=298;  //Absolute temperature in K

eta=8.9*10^-4;  //Viscosity of water in J s m^-3 (1J=1N m therefore N s m^-2=J s m^-3 )

KD=(8*R*T)*1000/(3*eta);  //Rate constant for diffusion controlled reaction in M^-1 s^-1(1 m^3 mol^-1 s^-1=1000 M^-1 s^-1)

printf("Rate constant for diffusion controlled reaction = %.1f*10^9 M^-1 s^-1",KD*10^-9);
