// Example 2.10
clear all;
clc;

// Using standard data table of mass and the coefficients of mass equation for Silver-107
N = 60;                                       // Number of neutrons
Z = 47;                                       // Atomic number
A = 107;                                      // Atomic mass number
// The coefficients used in mass equation are 
alpha = 15.56;
bet = 17.23;
gam = 0.697;
zeta = 23.285;
mn = 939.573;                                 // Mass of neutron in terms of energy
mH = 938.791;                                 // Mass of proton in terms of energy
// Calculation 
disp('Using mass equation');
M = (N*mn)+(Z*mH)-(alpha*A)+(bet*(A^(2/3)))+(gam*Z^2/A^(1/3))+(zeta*(A-2*Z)^2/A);
// Expressing in amu by using 1 amu = 931.5 MeV
M_amu = M/931.5;
printf(" Mass = %5.5f MeV = %5.5f u \n",M,M_amu);
disp('Actual mass = 106.905092 u');
// Calculation 
BE = (alpha*A)-(bet*(A^(2/3)))-(gam*Z^2/A^(1/3))-((zeta*(A-(2*Z))^2)/A);
// Result
printf("\n Binding Energy = %4.2f MeV or %3.1f MeV/nucleon \n",BE,BE/107);
// The value is different from the answer given in the textbook. The textbook answer is wrong.
