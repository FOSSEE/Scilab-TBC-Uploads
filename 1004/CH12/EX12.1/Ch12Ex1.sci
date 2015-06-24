// Scilab Code Ex12.1 Rate of consumption of U-235 per year: Pg:246 (2008)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
amu = 1.6e-027;    // Mass of a nucleon, kg
P_out = 250e+06;    // Output power of nuclear reactor, J/s
E = 200e+06*e;    // Energy released per fission of U-235, J
n = P_out/E;    // Number of fissions per second
m = 235*amu;    // Mass of a nucleon, kg
m_sec = m*n;    // Consumption per second of U-235, kg
m_year = m_sec*365*24*60*60;    // Consumption per year of U-235, kg
printf("\nThe rate of consumption of U-235 per year = %5.2f kg", m_year);
// Result 
// The rate of consumption of U-235 per year = 92.64 kg 