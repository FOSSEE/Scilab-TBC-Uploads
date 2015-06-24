// Example 7.12
clear all;
clc;

// Given data
f0 = 0.93;                                // Thermal utilization factor 
rho = 0.205;                              // Total excess reactivity 
rho_w = 0.085;                            // Total worth of control rods
rho_sh = rho-rho_w;                       // Total worth of shim control
C = (rho_sh*10^3)/(1.92*(1-f0));          // Concentration of boric acid in ppm
printf('\n The minimum concentration of boric acid = %d ppm \n',ceil(C));
// Expressing in gram/litre
// Using the data from standard periodic table
molwt_B = 10.8;                           // Molecular weight of Boron(B)
molwt_O = 16;                             // Molecular weight of Oxygen(O)
molwt_H = 1;                             // Molecular weight of Hydrogen(H)
molwt_H3BO3 = (3*molwt_H)+molwt_B+(3*molwt_O);          // Molecular weight of Boric acid
// Calculation
amt_H3BO3 = (molwt_H3BO3/molwt_B)*C/1000;
// Result
printf("\n The shim system must contain %3.2f g/litre of boric acid to hold down the reactor. \n",amt_H3BO3);

