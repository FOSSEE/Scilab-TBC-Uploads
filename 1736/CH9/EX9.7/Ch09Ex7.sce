// Scilab Code Ex9.7 :Page:285 (2006)
clc; clear;
Lambda_0 = 390;    // Penetration depth at absolute zero, angstorm
T_c = 7;    // Transition temperature of Pb, K
T = 2;      // Givn temperature, K
Lambda = Lambda_0*[1-(T/T_c)^2]^(-1/2);    // London penetration depth in Pb at 2K, angstorm 
printf("\nThe London penetration depth in Pb at 2K = %7.4f angstorm", Lambda);
printf("\nThe London penetration depth at T = T_c becomes %d", %inf);

// Result 
// The London penetration depth in Pb at 2K = 406.9644 angstorm
// The London penetration depth at T = T_c becomes Inf 
