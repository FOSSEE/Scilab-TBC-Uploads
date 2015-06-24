// Scilab code Ex12.1: Pg 418 (2005)
clc; clear;
// Part (a)
k_B = 1.38e-23;   // Boltzmann constat, J/K
m_e = 9.11e-31;    // Mass of electron, kg
T = 300;   // Temperature, K
N_A = 6.023e+023;    // Avogadro's number
v_rms = sqrt((3*k_B*T)/m_e);       // Root mean square velocity of electrons, m/s
I = 10;   // Electric current, A
A = 4e-06;    // Area of cross-section of copper wire, m^2
J = I/A;   // Current density, A-m^(-2)
d = 8.96;    // Density of copper at room temperature, g/cc
M = 63.5;    // Atomic mass of Cu, g
n = d*N_A/M*1e+06;    // Number of electrons per metre cube
e = 1.6e-19;    // Charge on electron, C
v_d = J/(n*e);    // Drift velocity, m/s
v_d_rms  = v_d/v_rms;    // Ratio of drift speed to rms speed
printf("\nThe ratio of drift speed to rms speed is = %3.1e", v_d_rms);

// Part (b)
L = 2.6e-10;
tau = L/v_rms;   // Average time between two collisions, s
printf("\nAverage time between two collisions = %2.2e s", tau);

// Part (c)
sigma = (n*e^2*L)/sqrt(3*k_B*T*m_e);  // Conductivity of copper, per ohm-m
printf("\nConductivity of copper at room temperature = %3.1e per ohm-m", sigma);


// Result
// The ratio of drift speed to rms speed is = 1.6e-009
// Average time between two collisions = 2.23e-015 s
// Conductivity of copper at room temperature = 5.3e+006 per ohm-m 