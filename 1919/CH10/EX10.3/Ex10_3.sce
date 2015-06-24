
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 3

clear ;clc;

//Given data
P1 = 6.76               // volumetric composition of CO2
P2 = 2.25               // volumetric composition of CO
P3 = 8.44               // volumetric composition of O2
P4 = 82.55              // volumetric composition of N2
mol_wt_C =12            // molecular weight of carbon
mol_wt_H =1             // molecular weight of hydrogen
mas_air = 28.97         // mass of air

// Consider 100 mol dry combustion products as the basis
// Combustion Reaction
// CXHY +Z*O2 +3.76*Z*N2 => P1*CO2 + P2*CO + P3*O2 + P4*N2 + 0.5*Y*H2O

Z = P4/3.76                      // nitrogen mass balance
X = P1+P2                        // carbon mass balance
Y =  (Z-P1-P2/2-P3)/0.25         // oxygen balance

// over all composition of fuel on mass basis
m_C = (X*mol_wt_C)/(X*mol_wt_C+Y*mol_wt_H)     // composition of Carbon
m_H = (Y*mol_wt_H)/(X*mol_wt_C+Y*mol_wt_H)     // composition of Hydrogen

// Air-Fuel ratio
AFR = (Z+P4)*mas_air/(X*mol_wt_C + Y)

// Output Results
mprintf('(a) Carbon composition of fuel on mass basis   = %4.2f', m_C*100);
mprintf('\n     Hydrogen composition of fuel on mass basis = %4.2f', m_H*100);
mprintf('\n (b) Air fuel ratio = %4.3f kg air/kg fuel' , AFR);
