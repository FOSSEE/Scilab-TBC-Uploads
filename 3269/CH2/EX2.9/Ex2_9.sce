// Example 2.9
clear all;
clc;

// Using standard data table of mass in amu
M_C12 = 12;                             // Atomic mass of Carbon-12
M_n = 1.00866;                          // Atomic mass of neutron
M_C13 = 13.00335;                       // Atomic mass of Carbon-13
//If one neutron is removed from carbon-13, carbon-12 is obtained
tot = M_C12+M_n;
dm = tot-M_C13;                         // Mass defect
// Converting to energy equivalent from mass by using 1 amu = 931.5 MeV
Es = dm*931.5;
// Result
printf(" \n The binding Energy of the last neutron in Carbon-13 atom = %4.2f MeV",Es);
