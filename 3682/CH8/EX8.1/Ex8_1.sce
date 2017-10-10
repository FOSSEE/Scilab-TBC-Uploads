// Exa 8.1

clc;
clear;

// Given data

// Monostable multivibrator
R=100*10^3; // Ω
T=100*10^-3; // Time delay (sec)

// Solution
printf(' Using Eqn.(8.2) on page no.313, we get,');
//T= 1.1*R*C;
C=T/(1.11*R);
printf(' C = %.1f μF.\n  From the graph of Fig.8.6 on page no. 314, the value of C is found to be 0.9 μF also.\n',C*10^6);
