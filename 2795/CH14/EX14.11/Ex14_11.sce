// Scilab Code Ex14.11: Page-550(2014)
clc; clear;
m_p = 0.938;    // Rest mass energy of the proton, GeV
E_cm = 14000;    // Centre of mass energy of colliding proton beams at LHC, GeV
// As E_cm = sqrt(2*m_p^2+2*m_p*K), solving for K
K = E_cm^2*1e+009/(2*m_p);    // Approx. kinetic energy of the protons needed for fixed-target experiment, eV 
printf("\nThe kinetic energy of the protons needed for fixed-target experiment = %3.1e eV", K);

// Result
// The kinetic energy of the protons needed for fixed-target experiment = 1.0e+017 eV 