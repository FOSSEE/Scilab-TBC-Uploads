// Ex17_1 Page:324 (2014)
clc;clear;
A = poly (0, 'A');    // Declare the mass number variable
m_n = 1.67e-027;    // Nucleon mass, kg
R0 = 1.2e-015;    // Nuclear constant, m 
d = m_n*A/(4/3*%pi*R0^3*A);
printf("\nDensity of the nucleus = %3.1e km/metre-cube", horner(d,0));

// Result
// Density of the nucleus = 2.3e+017 km/metre-cube 