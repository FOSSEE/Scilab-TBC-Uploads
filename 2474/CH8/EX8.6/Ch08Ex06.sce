// Scilab code Ex8.6: Pg.332-333 (2008)
clc; clear;

// Part (a)
V = 2.24e-02;     // Standard volume, m^3
N = 5.24e-06;    //  of He molecules in atmosphereNumber
N_A = 6.02e+23;    // Avagrados number
h = 6.63e-34;    // Plank's constant, J-s
k = 1.38e-23;    // Boltzmann constant, J/K
T = 273;    // Standard temperature, K
m = 1.66e-27;     // Mass of He gas, kg
l = N_A*N/V*h^3/(3*m*k*T)^(3/2);
if (l < 1) then
printf("\nFor T = %d K, Boltzmann distribution describes He behaviour.", T)
else 
printf("\nFor T = %d K, Boltzmann distribution does not describe He behaviour.", T);
end;

// Part (b)
T = 4.2;    // Temperature, K
m_He = 4;    // Atomic weight of He, g
rho = 0.124e-06;    // Density of liquid He, g/m^3
N_A_V = (N_A*rho*1e+06)/m_He;    // Particle density, atoms/m^3
l = N_A*N/V*h^3/(3*m*k*T)^(3/2);
if (l < 1) then
printf("\nFor T = %d K, Boltzmann distribution describes He behaviour.", T)
else
printf("\nFor T = %d K, Boltzmann distribution does not describe He behaviour.", T);
end;

// Result
// For T = 273 K, Boltzmann distribution describes He behaviour.
// For T = 4 K, Boltzmann distribution describes He behaviour. 