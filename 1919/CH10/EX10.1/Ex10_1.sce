
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 1

clear ;clc;

//Given data
// Combustion Reaction
// C2H2 + 2.5*O2 + 3.76*2.5*N2 => 2*CO2 + H2O + 9.4*N2

afr1 = (2.5+3.76*2.5)/1             // air fuel ratio = (O2+N2)/C2H2

M_C2H2 = 26;
M_air  = 28.67;

a_f_r1 = afr1*M_air/M_C2H2          // air fuel ratio in kg air/kg fuel

a_f_r2 = a_f_r1*1.5                 // 50 % excess air is used

// Actual Combustion Reaction
// C2H2 + 2.5*(1.5)*O2 + 3.76*2.5*(1.5)*N2 => 2*CO2 + H2O + 9.4*N2

tot_mol = 2+1+1.25+14.1             // total moles of product
mol_CO2 = 2/tot_mol
mol_O2  = 1.25/tot_mol
mol_H2O = 1/tot_mol
mol_N2  = 14.1/tot_mol

// Output Results
mprintf('Composition of CO2 in product = %4.3f ' , mol_CO2);
mprintf('\n Composition of O2 in product  = %4.4f ' , mol_O2);
mprintf('\n Composition of H2O in product = %4.4f ' , mol_H2O);
mprintf('\n Composition of N2 in product  = %4.4f ' , mol_N2);
