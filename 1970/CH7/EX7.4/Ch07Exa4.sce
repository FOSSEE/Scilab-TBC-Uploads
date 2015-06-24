// Scilab code Exa7.4: : Page-293 (2011)
clc; clear;
alpha_k = 45;            // Ratio between decay constants
sum_alpha = 0.08;        // Sum of alphas
P = 0.35*1/60;            // Probability of the isomeric transition,per hour
lambda_g = P*sum_alpha/alpha_k;   // Decay constant of the gamma radiations, per hour
T_g = 1/(lambda_g*365*24);        // Partial life time for gamma emission,years
printf("\nThe partial life time for gamma emission = %5.3f years", T_g);

// Result
// The partial life time for gamma emission = 11.008 years 


