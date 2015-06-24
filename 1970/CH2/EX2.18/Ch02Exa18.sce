// Scilab code Exa2.18 : : Page 95 (2011)
clc; clear;
N_0 = 6.022137e+023; //  Avagadro number
d = 0.02; // Thickness of the foil, cm
R = 19.3; // Density of Au,g/cc
N_1 = d*R/197*N_0; // Initial number of Au-197 nuclei per unit area of foil,cm^-2
T_H = 2.7*24*3600; // Half life of Au-198,sec
L = log(2)/T_H; // Decay constant for Au-198,sec^-1
I = 10^12; // Intensity of neutron beam,neutrons/cm^2/sec
S = 97.8e-024; // Cross section for reaction,cm^-2
t = 5*60; // Reaction time,s
A = S*I*N_1*(1-%e^(-L*t)); // Activity of Au-198,cm^-2sec^-1
N_2 = S*I*N_1/L; // The maximum amount of Au-198 produced,cm^-2
printf("\nThe activity of Au-198 = %5.3e per Sq.cm per sec\nThe maximum amount of Au-198 produced = %4.2e per Sq.cm", A, N_2);

// Result
// The activity of Au-198 = 1.028e+008 per Sq.cm per sec
// The maximum amount of Au-198 produced = 3.88e+016 per Sq.cm 