clc;
clear;
printf("\t\t\tChapter11_example5\n\n\n");
// Estimation of the surface temperature of the sun and the emitted heat flux
lambda_max=0.5e-6; // maximum wavelength in m
// From Wien’s Displacement Law we can write lambda_max*T=2.898e-3 m.K
T=2.898e-3/lambda_max;
printf("\nThe Surface Temperature of the Sun is %d K",T);
// The heat flux is given by the Stefan-Boltzmann Equation as q=sigma*T^4
sigma=5.675e-8; // value of Stefan-Boltzmann constant in W/(m^2.K^4)
q=sigma*T^4;
printf("\nThe heat flux emitted is %.3e W/sq.m",q);
