// Example 7.6
clear all;
clc;

// Given data
P0 = 500;                           // Reactor power in MW
rho = -0.1;                         // 10% in reactivity (Insertion of control rods correspond to negative reactivity)
// As the reactor is fueled with Uranium-235 
bet = 0.0065;                       // Total delayed neutron fraction of all groups denoted by 'beta'

P1 = (bet*(1-rho)*P0)/(bet-rho);    // The drop in power level in terms of MW
// Assuming that negative reactivity is greater than 4%
T = 80;                             // Reactor period obtained from Figure 7.2 in seconds
t = 600;                            // Analysis time in seconds 
// Calculation
P = P1*exp(-t/T);                   // Power level drop in MW
// Result
printf(" \n The power level drop after 10 minutes = %5.4f MW \n",P);
