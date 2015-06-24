// Scilab Code Ex14.10: Page-548(2014)
clc; clear;
m_p = 0.938;    // Rest mass energy of the proton, GeV
K = 6.4;    // Kinetic energy of the proton projectile, GeV
E_cm = sqrt(2*m_p^2+2*m_p*K);    // Centre of mass energy of proton collsion with the fixed proton target, GeV
Q = 2*m_p - 4*m_p;     // Q value of the reaction, GeV
K_th = -3*Q;    // Threshold kinetic energy required to produce the antiprotons, GeV
K = 1000;    // Kinetic energy of the protons in Tevatron, GeV
E_cm_T = sqrt(2*m_p^2+2*m_p*K);    // Centre-of-mass energy available for the reaction for the Tevatron, GeV
printf("\nThe available energy in the center on mass = %4.2f GeV", E_cm);
printf("\nThe threshold kinetic energy required to produce the antiprotons = %3.1f GeV", K_th);
printf("\nThe centre-of-mass energy available for the reaction for the Tevatron = %d GeV", E_cm_T);

// Result
// The available energy in the center on mass = 3.71 GeV
// The threshold kinetic energy required to produce the antiprotons = 5.6 GeV
// The centre-of-mass energy available for the reaction for the Tevatron = 43 GeV 
