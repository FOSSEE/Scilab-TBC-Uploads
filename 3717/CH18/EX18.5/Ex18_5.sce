// Ex18_5 Page:353 (2014)
clc;clear;
N1 = 1;    // Assume the number of present atoms of K-40
N2 = 10.2;    // No.of atoms of Ar-40 relative to K-40
t_half = 1.25e+009;    // Half-life of K-40, years
lambda = 0.693/t_half;    // Decay constant, per sec
t = log(1 + N2/N1)/lambda;    // Age of the rock on moon, years
printf("\nThe age of the rock on moon = %4.2e yr", t);

// Result
// The age of the rock on moon = 4.36e+009 yr 