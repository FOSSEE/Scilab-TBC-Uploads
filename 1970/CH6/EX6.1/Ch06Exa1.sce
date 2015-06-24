// Scilab code Exa6.1: : Page- 240 (2011)
clc; clear;
T = 5*24*60*60;    // Half life of the substance, sec
N = 6.023e+026*4e-06/210;        // Number of atoms
lambda = 0.693/T;             // Disintegration constant, per sec
K = lambda*N;                // Rate of disintegration, 
E = 0.34*1.60218e-013;        // Energy of the beta particle, joule
P = E*K;                    //   Rate at which energy is emitted, watt
printf("\nThe rate at which energy is emitted = %d watt", P);

// Result
// The rate at which energy is emitted = 1 watt 
