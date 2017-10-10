// Ex14_2 Page:274 (2014)
clc;clear;
T = 5.2;    // Temperature of lead, K
T_c = 7.193;    // Critical temperature of lead, K
lambda_0 = 37;    // London penetration depth at 0 K, nm
lambda_T = lambda_0*(1-(T/T_c)^4)^(-1/2);    // Penetration depth of lead at T K, nm
printf("\nThe penetration depth of lead at %3.1f K = %5.2f nm", T, lambda_T);

// Result
// The penetration depth of lead at 5.2 K = 43.40 nm 