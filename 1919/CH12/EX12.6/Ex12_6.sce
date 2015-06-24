
// Theory and Problems of Thermodynamics
// Chapter 12
// Statistical Thermodynamics
// Example 6
clear ;clc;

//Given data
T = 300                 // temperature of particles
E = 300                 // activation energy
e1 = 3*E                // permissible energy levels
e2 = 6*E                // permissible energy levels
e3 = 9*E                // permissible energy levels
g1 = 1                  // degeneracies of energy level
g2 = 3                  // degeneracies of energy level
g3 = 3                  // degeneracies of energy level

// Calculations
//q = sum(gi*exp(-ei/KT))
q = g1*exp(-e1/T) + g2*exp(-e2/T) + g3*exp(-e3/T)

// distribution of particles among energy levels
// ni/N = gi*exp(-ei/KT)/q
n1_N = g1*exp(-e1/T)/q
n2_N = g2*exp(-e2/T)/q
n3_N = g3*exp(-e3/T)/q

// Output Results
mprintf('Fractional distribution of particles at level 1 = %4.4f ' , n1_N);
mprintf('\n Fractional distribution of particles at level 2 = %4.4f ' , n2_N);
mprintf('\n Fractional distribution of particles at level 3 = %4.4f ' , n3_N);
