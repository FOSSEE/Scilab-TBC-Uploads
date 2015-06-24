// Scilab Code Ex1.1 : Page-1.8 (2004)
clc;clear;
N = 6.022e+23;      //  Avogadro Number; /mol
E_A = 502;          // First ionization energy of A atom, kJ/mol
E_B = -335;       // Electron affinity for B atom, kJ
r = 3e-10;        // Velocity of the particle at the mean position, angstrom
E_o = 8.85e-12; //Permittivity of free space, C/N^2-m^2
e = 1.6e-19;    // Electronic charge, C
E_C = N*(-e^2)/(4*%pi*E_o*r)*1e-03;   // The coulombic electrostatic attaction energy, kJ/mol
E = E_A + E_B + E_C;    // Net change in energy per mol, kJ/mol  
printf("\nNet change in energy per mol = %3d kJ/mol", E);
disp("Since net change in energy is negative, the molecule A+B- is stable.");

// Result
// Net change in energy per mol = -295 kJ/mol 
// Since net change in energy is negative, the molecule A+B- is stable.   
 

