// Scilab Code Ex7.5: Variation of London penetration depth with temperature: Page-153 (2010)
lambda_0 = 37e-009;    // Penetration depth of lead at 0 kelvin, m
T_c = 7.193;    // Critical temperature of superconducting transition for lead, kelvin
T = 5.2;    // Temperature at which penetration depth for lead becomes lambda_T, kelvin   
lambda_T = lambda_0*(1-(T/T_c)^4)^(-1/2);    // Penetration depth of lead at 5.2 kelvin, m
printf("\nThe penetration depth of lead at %3.1f K = %4.1f nm",T, lambda_T/1e-009);

// Result
// The penetration depth of lead at 5.2 K = 43.4 nm 