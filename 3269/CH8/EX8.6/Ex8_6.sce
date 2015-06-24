// Example 8.6
clear all;
clc;

// Given data
h = 7500;                                     // Heat transfer coefficient in Btu/hr-ft^2-F
// Using the result of Example 8.5 
q_bar = 3.66*10^5;                            // Heat flux of the fuel rod in Btu/hr-ft^2
T_c = 650;                                    // Outer temperature of cladding in F
// Calculation
T_b = T_c-(q_bar/h);
// Result
printf(" \n Temperature of water with respect to the midpoint of the hottest fuel rod = %d F \n",T_b);
