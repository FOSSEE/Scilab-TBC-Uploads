// Example 6.9
clear all;
clc;

// Given data
rho_F = 0.0145;                 // Concentration of Uranium-235 fuel in g/cm^3
// Using the result of Example 6.6 
M_T2 = 30.8;                    // Migration area in cm^2
B = 0.0529;                     // Buckling factor
delta = 7.2+0.1*(M_T2-40);      // Empirical formula for reflector savings
R0 = %pi/B;                     // The radius of the bare reactor
// Calculation 
R = R0-delta;
m_F=rho_F*4/3*%pi*R^3;
// Result
printf(" \n The critical radius of reflected reactor = %3.2f cm \n",R);
printf(" \n The critical mass of reflected reactor = %3.2f kg \n",m_F/1000);

