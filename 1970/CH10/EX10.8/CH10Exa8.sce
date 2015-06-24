// Scilab code Exa10.8 : : Page-457 (2011)
clc; clear;
N_0 = 6.02252e+026;        // Avogadro's constant 
rho = 8.9*10^3;            // Nuclear density of Co-59, Kg per cubic metre
M = 59;                    // Mass number
sigma = 30e-028;             // Cross section, per square metre
phi = 10^16;              // Neutron flux, neutrons per square metre per sec
d = 0.04e-02;                // Thickness of Co-59 sheet, metre
t = 3*60*60;                // Total reaction time, sec
t_half = 5.2*365*86400;        // Half life of Co-60, sec 
lambda = 0.693/t_half;        // Disintegration constant, per sec
N_nuclei = round(N_0*rho/M*sigma*phi*d*t);        // Number of nuclei of Co-60 produced
Init_activity = lambda*N_nuclei;        // Initial activity, decays per sec
printf("\nThe number of nuclei of Co60 produced = %5.2e \nThe initial activity per Sq. metre = %1.0g decays per sec", N_nuclei, Init_activity);

// Result
// The number of nuclei of Co60 produced = 1.18e+019 
// The initial activity per Sq. metre = 5e+010 decays per sec 