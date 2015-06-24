// Scilab code Exa13.2 : : Page-600 (2011)
clc; clear;
E = 200*1.6e-13;        // Energy released per fission, joules per neutron
t = 10^-3;            // Time, sec
P = E/t;              // Power produced by one free neutron, watt per neutron
P_l = 10^9;            // Power level, watt
N = P_l/P;            // Number of free neutrons in the reactor, neutrons
printf("\nThe number of free neutrons in the reactor = %5.3e neutrons", N);

// Result
// The number of free neutrons in the reactor = 3.125e+016 neutrons 