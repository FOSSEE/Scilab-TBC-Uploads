// Scilab code Exa7.2: : Page-293 (2011)
clc; clear;
m_0 = 9.1094e-031;    // Rest mass of the electron, Kg
B_R = 1250e-06;       // Magnetic field,tesla metre
e =  1.6022e-019;     // Charge of the electron, coulomb
C = 3e+08;            // Velocity of the light, metre per sec
E_k = 0.089;          // Binding energy of the K-shell electron,MeV
v = B_R*e/(m_0*sqrt(1+B_R^2*e^2/(m_0^2*C^2)));  // Velocity of the photoelectron, metre per sec
E_pe = m_0/(1.6022e-013)*C^2*(1/sqrt(1-v^2/C^2)-1);  // Energy of the photoelectron,MeV
E_g = E_pe+E_k;    // Energy of the gamma rays, MeV
printf("\nThe energy of the gamma rays = %5.3f MeV", E_g);

// Result
// The energy of the gamma rays = 0.212 MeV 