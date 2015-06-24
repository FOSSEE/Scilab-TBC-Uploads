// Scilab code: Ex7.1 : Frequency of oscillation of a hydrogen molecule: Pg: 170 (2008)
K = 4.8e+02;    // Force constant, N/m
m = 1.67e-027;    // Mass of hydrogen atom, kg
mu = m/2;    // Reduced mass of the system, kg
v = 1/(2*%pi)*sqrt(K/mu);    // Frequency of oscillation of a hydrogen molecule, Hz
printf("\nThe frequency of oscillation of a hydrogen molecule = %3.1e Hz", v);
// Result
// The frequency of oscillation of a hydrogen molecule = 1.2e+014 Hz