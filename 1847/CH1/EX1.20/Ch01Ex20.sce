// Scilab Code Ex1.20: : Page-1.19 (2009)
clc; clear;
m_e = 9.1e-031;     // Mass of the electron, kg
m_p = 1.67e-027;    // Mass of the proton, kg
v_e = 1;    // For simplicity assume velocity of electron to be unity, m/s
// From de-Broglie relation, 
// lambda_p = lambda_e = h(m*v_p), solving for v_p
v_p = m_e*v_e/m_p;  // Velocity of the proton, m/s
// As lambda_e = h/sqrt(2*m_e*K_e) and lambda_p = h/sqrt(2*m_p*K_p), solving for K_e/K_p
K_ratio = m_p/m_e;      // Ratio of kinetic energies of electron and proton

printf("\nThe speed of proton for an equivalent wavelength of that of electron = %3.1e ve", v_p);
printf("\nRatio of kinetic energies of electron and proton = %3.1e, therefore Ke > Kp", K_ratio);

// Result 
// The speed of proton for an equivalent wavelength of that of electron = 5.4e-04 ve
// Ratio of kinetic energies of electron and proton = 1.8e+03, therefore Ke > Kp 
