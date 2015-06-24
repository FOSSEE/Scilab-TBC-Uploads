// Scilab Code Ex19.5:Page-961 (2011)
clc; clear;
T1 = 3;    // Initial temperature of lead wire, K
T2 = 7.1;    // Final temperature of lead wire, K
lambda1 = 39.6;    // Initial London penetration depth for lead, mm
lambda2 = 173;    // Final London penetration depth for lead, mm
// As lambda_T = lambda_0*(1-(T/T_c)^4)^(-1/2) so
// (lambda1/lambda2)^2 = (T_c^4 - T2^4)/(T_c^4 - T1^4)
// Solving for T_c
T_c = ((T2^4-T1^4*(lambda1/lambda2)^2)/(1-(lambda1/lambda2)^2))^(1/4);
printf("\nThe critical temperature of lead = %5.3f K", T_c);

// Result 
// The critical temperature of lead = 7.193 K 
