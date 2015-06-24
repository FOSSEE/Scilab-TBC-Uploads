// Scilab code Ex7.9: Pg:298 (2008)
clc;clear;
sigma = 2e+04*1e-028;    // Nuclear reaction cross-section, Sq.m
x = 1e-04;    // Thickness of the sheet, meter
m = 112;    // Mean atomic mass of cadmium, amu
rho = 8.64e+03;    // Density of cadmium sheet, kg per cubic meter
amu = 1.66e-027;    // Mass equivalent of 1 amu, kg
// Since cadmium 113 contains 12 percent of natural cadmium. Thus 
n = 12/100*rho/(m*amu);    // Number of nuclei per unit volume, atoms per cubic meter
n_sigma = n*sigma;    // Microscopic cross-section, per length
// As N = N0*exp(-n*sigma*x), so that (N - N0)/N0 = 1-exp(-n_sigma*x)
frac_N = 1-exp(-n_sigma*x);
N0 = 1;    // For simlicity assume number of incident neutrons be unity
N = 1/100*N0;    // Given number of neutrons which pass through cadmium sheet
x = -log(N/N0)/n_sigma*1e+003;    // Thickness of the cadmium sheet when one percent of the incident neutrons pass through the cadmium sheet, mm
printf("\nThe fraction of the incident thermal neutrons absorbed by the cadmium sheet = %4.2f ", frac_N);
printf("\nThe thickness of the cadmium sheet when one percent of the incident neutrons pass through the cadmium sheet = %4.2f mm", x);

// Result 
// The fraction of the incident thermal neutrons absorbed by the cadmium sheet = 0.67 
// The thickness of the cadmium sheet when one percent of the incident neutrons pass through the cadmium sheet = 0.41 mm 