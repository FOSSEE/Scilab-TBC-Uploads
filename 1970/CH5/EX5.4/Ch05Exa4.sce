// Scilab code Exa5.4: : Page 204 (2011)
clc; clear;
a = 10^-14;        // Width of the  potential barrier, m
E = 5*1.60218e-013;        // Energy of the alpha particle, joule
V = 10*1.60218e-013;        // Potential height, joule
M_0 = 6.644e-027;        // Rest mass of the alpha particle, joule
h_red = 1.05457e-034;        // Reduced value of Planck's constant,joule sec 
T = 4*exp(-2*a*sqrt(2*M_0*(V-E)/h_red^2));   // Probability of leakage through through potential barrier
printf("\nThe probability of leakage of alpha-particle through potential barrier = %5.3e ",T);

// Result
// The probability of leakage of alpha-particle through potential barrier = 1.271e-008  