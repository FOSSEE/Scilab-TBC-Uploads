// Scilab code Ex11.28: Pg.544-545 (2008)
clc; clear;
C_c = 200;    // Carbon content
d_beta = 400;    // Beta decay rate, decays/min
d_r = 15.6*C_c;    // Decay rate, decays/min
t_half = 5730;    // Half life-time of C-14, y
n = log(d_r/d_beta)/log(2);    // Number of half-lives of bone
t = n*t_half;     // Age of bone, y
printf("\nThe age of the bone = %5d y", t);
printf("\nSince the bone is older than 500 y so it cannot be related to Cortes conquests");

// Result
// The age of the bone = 16980 y
// Since the bone is older than 500 y so it cannot be related to Cortes conquests 