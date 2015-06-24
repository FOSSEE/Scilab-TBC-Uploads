// Scilab code Ex4.4: Pg.158 (2008)
clc; clear;
e = 1.6e-19;    // Charge on electron, C
E_k = 6e+06*e;     // Kinetic energy of alpha particle, J
I_b = 1e-09;    // Beam current, A
q_a = 2*e;     // Charge on alpha particle, C
I_0 = I_b/q_a;    // Intensity of incident alpha particles, alpha/sec
rho = 10.5*1e+06;     // Density of silver, gm/m^3
N_A = 6.02e+23;     // Avagrado's number
M = 108;     // Molar mass of silver, g/mol
n = rho*N_A/M;    // Particle density, atoms/m^3
A_sc = 5e-06;     // Area of scintillation detector, m^2
r = 2e-02;     // Distance between detector & foil, m
t = 1e-06;     // Thickness of foil, m
k = 9e+09;     // Coulomb's constant, N-m^2/C^2
Z = 47;     // Atomic number of silver
theta = 75;     // Scattering angle, degrees
delta_N = (I_0*A_sc*n*t/r^2)*(k*Z*e^2/(2*E_k))^2*1/(sind(theta/2)^4);    // Number of alpha particles scattered per second, alpha/sec
printf("\nThe number of alpha particles scattered per second = %3d alpha/sec", delta_N);

// Result
// Number of alpha particles scattered per second = 529 alpha/sec