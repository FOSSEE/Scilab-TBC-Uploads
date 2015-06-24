// Scilab code Ex11.1: Pg 380 (2005)
clc; clear;
// Part (a)
f = 1.15e+11;   // Frequency of transitions, Hz
omega = 2*(%pi)*f;    // Angular frequency of absorbed radiations, Hz
h_cross = 1.055e-34;   // Reduced planks constant, J-s
// Since E = (h_cross)^2/I_CM = h_cross*omega, solving for I_CM
I_CM = h_cross/omega;   // Moment of inertia of molecule about its center of mass, kg-m^2
printf("\nThe moment of inertia of molecule about its center of mass = %4.2e kg-m^2", I_CM);

// Part (b)
m_O = 16;   // Mass of oxygen atom, a.m.u
m_C = 12;    // Mass of carbon atom, a.m.u
mu = ( m_O * m_C *0.166e-26)/(m_O + m_C);       // Reduced mass, kg
// Since I_CM = mew*R_o^2, solving for R_o
R_0 = sqrt(I_CM/mu);    // Bond length of carbon monoxide molecule, m 
printf("\nThe bond length of carbon monoxide molecule = %5.3f nm", R_0/1e-09);

// Result
// The moment of inertia of molecule about its center of mass = 1.46e-046 kg-m^2
// The bond length of carbon monoxide molecule = 0.113 nm 