// Ex3_6 Page:51 (2014)
clc; clear;
M = 1;    // For simplicity assume mass of a proton to be unity, amu
m_e = 1/1836;    // Mass of an electron, amu
m_d = 2*M;    // Mass of a deuterium, amu
lambda = 6562.8; // Wavelength of H_alpha line of hydrogen, angstrom
mu = M/(1 + M/m_e); // Reduced mass of an electron-proton system, amu
mu_prime = m_d/(1 + m_d/m_e);   // Reduced mass of an electron-deuterium system, amu
lambda_prime = lambda*mu/mu_prime;  // Wavelength of H_alpha line of deuterium, angstrom
printf("\nThe wavelength of H_alpha line of deuterium = %4d angstrom", lambda_prime);

// Result
// The wavelength of H_alpha line of deuterium = 6561 angstrom 

