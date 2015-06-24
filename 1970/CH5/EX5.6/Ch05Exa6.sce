// Scilab code Exa5.6: : Page 204 (2011)
clc; clear; 
Z_D = 82;    // Atomic number of Po
E_Po210 = 5.3;    // Alpha-source for Po210, MeV
E_Po214 = 7.7;    // Alpha-source for Po214, MeV
log_lambda_Po210 = -1*1.72*Z_D*E_Po210^(-1/2);    
log_lambda_Po214 = -1*1.72*Z_D*E_Po214^(-1/2);    
delta_OM_t = log_lambda_Po214 - log_lambda_Po210;    // Difference in order of magnitude of life times of Po214 and Po210
printf("\nThe disintegration constant increases by a factor of some 10^%2d", delta_OM_t);

// Result
// The disintegration constant increases by a factor of some 10^10  