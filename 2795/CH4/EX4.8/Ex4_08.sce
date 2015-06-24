// Scilab Code Ex4.8: Page-149(2013)
clc; clear
m_e = 0.0005486;    // Mass of an electron u
m_p = 1.007276;    // Mass of a proton, u
m_d = 2.013553;    // Mass of a deutron, u
m_t = 3.015500;    // Mass of a triton, u
R_inf = 1.0974e+007;    // Rydberg constant, per metre
R_H = 1/(1+m_e/m_p)*R_inf;    // Rydberg constant for hydrogen
R_D = 1/(1+m_e/m_d)*R_inf;    // Rydberg constant for deuterium
R_T = 1/(1+m_e/m_t)*R_inf;    // Rydberg constant for tritium
lambda_H = 1/(R_H*(1/2^2-1/3^2)*1e-009);    // Wavelength of H_alpha line for hydrogen, nm
lambda_D = 1/(R_D*(1/2^2-1/3^2)*1e-009);    // Wavelength of H_alpha line for deuterium, nm
lambda_T = 1/(R_T*(1/2^2-1/3^2)*1e-009);    // Wavelength of H_alpha line for tritium, nm
printf("\nThe wavelength of H_alpha line for hydrogen = %6.2f nm", lambda_H);
printf("\nThe wavelength of H_alpha line for deutruim = %6.2f nm", lambda_D);
printf("\nThe wavelength of H_alpha line for tritium = %6.2f nm", lambda_T);

// Result
// The wavelength of H_alpha line for hydrogen = 656.45 nm
// The wavelength of H_alpha line for deutruim = 656.27 nm
// The wavelength of H_alpha line for tritium = 656.22 nm 