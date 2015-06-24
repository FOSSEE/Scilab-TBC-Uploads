// Scilab code Exa4.15 : : Page 182 (2011)
clc; clear;
p = 100;        // Momentum of the particle, GeV
n = 1+1.35e-04;    // Refractive index of the gas 
m_0 = 1;         // Mass, GeV per square coulomb
gama = sqrt((p^2+m_0^2)/m_0);     // Boost parameter
bta = sqrt (1-1/gama^2);        // Relativistic parameter
d_theta = 1e-003;    // Error in the emission angle, radian
theta = acos(1/(n*bta));         // Emision angle of photon, radian 
F_err = (p^2*n^2*2*theta*10^-3)/(2*m_0^2);        // Fractional error
printf("\nThe fractional error in rest mass of the particle =  %4.2f", F_err);

// Result 
// The fractional error in rest mass of the particle =  0.13 