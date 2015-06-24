
// Theory and Problems of Thermodynamics
// Chapter 12
// Statistical Thermodynamics
// Example 11
clear ;clc;

//Given data
T = 300                     // Temperature of paritcle crystal in K
TE = 175                    // Einstein temperature of particle crystal in K
k = 1.38*1e-23              // boltzmann constant
h = 6.625*1e-34             // planck constant
N = 6.023*1e23              // number of atoms per mole
R = 8.314                   // gas constant
// Calculations
v = TE*k/h                          // frequency of oscillations

q = exp(-TE/2/T)/(1-exp(-TE/T))     // particle partition function

// molar energy of crystal
u = 3/2*N*h*v + 3*R*T*((TE/T)/(exp(TE/T)-1))


// Output results
mprintf('frequency of oscillations of crystal = %4.4f E12 per second', v*1e-12)
mprintf('\n particle partition function of crystal = %4.4f ', q)
mprintf('\n molar energy of crystal = %4.3f kJ/mol', u*1e-3)
// computational error in textbook
