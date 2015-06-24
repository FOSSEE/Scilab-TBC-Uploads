// Example 7.10
clear all;
clc;

// Given data
d = 5;                                    // Inner diameter of the tube in cm
a = d/2;                                  // Inner radius of the tube in cm
l = 76;                                   // Length of the tube in cm
rho = 2;                                  // Density of B4C in g/cm^3
n = 5;                                    // Number of rods in tbe reactor
m_B4C = 2*(n*%pi*(a^2)*l);                // Mass of B4C in all the rods
// Using the data from standard periodic table
molwt_B = 10.8;                           // Molecular weight of Boron(B)
molwt_C = 12;                             // Molecular weight of Carbon(C)
molwt_B4C = (4*molwt_B)+molwt_C;          // Molecular weight of B4C
N_A = 0.6*10^(24);                        // Avogadro number
// From Table II.3 
sigma_a = 0.27*10^(-24);                  // Microscopic absorption cross section of boron in cm^2
n_B = (4*m_B4C*N_A)/molwt_B4C;            // Number of boron atoms
// Using the result of Example 6.3
SIGMA_aF = 0.00833;                       // Macroscopic absorption cross section of plutonium fuel in cm^(-1)
SIGMA_aC = 0.000019;                      // Macroscopic absorption cross section of sodium coolant in cm^(-1)
R_c = 41.7;                               // Critical radius in cm
N_B = n_B/((4/3)*%pi*R_c^3);              // Atom density of boron over an entire reactor assuming spherical shape
SIGMA_aB = sigma_a*N_B;                   // Macroscopic absorption cross section of boron
// Calculation
rho_w = SIGMA_aB/(SIGMA_aF+SIGMA_aC);
// Result
printf(" \n The worth of the control rods using one group theory = %.4f or %.2f percent \n",rho_w,rho_w*100);
// In textbook, the final answer of total worth of control rods in percentage is wrong.
