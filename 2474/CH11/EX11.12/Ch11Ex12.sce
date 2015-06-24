// Scilab code Ex11.12: Pg.503 (2008)
clc; clear;
M_P = 39.964000;    // Atomic mass of Parent nucleus, u
M_D = 39.962384;    // Atomic mass of daughter nucleus, u
m_e = 5.4858e-04;    //  Mass of electron, u
// For simplicity assume velocity of light be unity
c = 1;    // Velocity of light, m/s
Q = (M_P - (M_D + 2*m_e))*931.5;    // Maximum decay energy, MeV/c^2
printf("\nThe maximum energy of emitted positrons = %5.3f MeV/c^2", Q);

// Result
// The maximum energy of emitted positrons = 0.483 MeV/c^2 