// Scilab code Exa8.5 : : Page-349 (2011)
clc; clear;
a_t = 5.38e-15;
a_s = -23.7e-15;
r_ot = 1.70e-15;
r_os = 2.40e-15;
m = 1.6748e-27;
E = 1.6e-13;
h_cut = 1.0549e-34;
K_sqr = m*E/h_cut^2;
sigma = 1/4*(3*4*%pi*a_t^2/(a_t^2*K_sqr+(1-1/2*K_sqr*a_t*r_ot)^2)+4*%pi*a_s^2/(a_s^2*K_sqr+(1-1/2*K_sqr*a_s*r_os)^2))*1e+028; // Total cross-section for n-p scattering, barn
printf("\nThe total cross section for n-p scattering = %5.3f barn", sigma);

// Result
// The total cross section for n-p scattering = 2.911 barn 
