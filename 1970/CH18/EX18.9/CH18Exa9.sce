// Scilab code Ex18.9 : : Page-766 (2011)
clc; clear;
h_cross = 6.62e-022;      // Redueced planck's constant, MeV sec
p_width = 0.88*35;        // Partial width of the decay, MeV    
tau = h_cross/p_width;    // Life time of sigma, sec    
T_pi = 1;                 // Isospin of pi plus particle  
T_lambda = 0;             // Isospin of lambda zero particle   
T_sigma  = T_pi+T_lambda; // Isospin of sigma particle   
printf("\nThe lifetime of sigma particle = %4.2e s\nThe reaction is strong\nThe isospin of sigma particle is : %d",tau, T_sigma);

// Result
// The lifetime of sigma particle = 2.15e-023 s
// The reaction is strong
// The isospin of sigma particle is : 1 