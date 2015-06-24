// Scilab Code Ex1.12: Page:32 (2011) 
clc;clear;
c = 3e+008;    // Speed of light in vacuum, m/s
m0 = 9.1e-031;    // Rest mass of electron, kg
m = 11*m0;    // Mass of relativistically moving electron, kg
E_k = (m-m0)*c^2/(1.6e-019*1e+06);    // Kinetic energy of moving electron, MeV
// As m = m0/sqrt(1-v^2/c^2), solving for v
v = c*sqrt(1-(m0/m)^2);    // The velocity of the moving electron, m/s
p = m*v;    // Momentum of moving electron, kg-m/s
printf("\nThe kinetic energy of moving electron = %4.2f MeV", E_k);
printf("\nThe momentum of moving electron = %4.2e kg-m/s", p);

// Result
// The kinetic energy of moving electron = 5.12 MeV
// The momentum of moving electron = 2.99e-021 kg-m/s 