// Scilab code Exa4.3.2: To calculate the fraction of neutron absorbed by Cd sheet of given thickness : Page 180 (2011)
t = 0.2e-03; // Thickness of Cd sheet, m
d = 8.64e+03; // Density, Kg/m^3
N = 6.023e+026; // Number of  nuclei in 7-Kg of Li-7
M = 112 ; // Atomic mass of Cd-113, amu
C_s = 20000e-028; //  Cross section of neutron for Cd-113, m^2
n = 0.12*d*N/M; // Number of Cd atoms/volume, atoms/m^3
F_inc_absorb = [1-%e^(-n*C_s*t)]*100; // Fraction of neutron absorbed 
printf("\n Fraction of neutron absorbed by Cd sheet : %4.2f percent",F_inc_absorb )
// Result
//   Fraction of neutron absorbed by Cd sheet : 89.25 percent 