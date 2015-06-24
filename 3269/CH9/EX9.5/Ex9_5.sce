// Example 9.5
clear all;
clc;

// Given data
H_year = 5;                                   // Equiavelnt dose per year in rem
start_age = 18;                               // Initial age of the worker in years
ret_age = 68;                                 // Retirement age of the worker in years
// Using data from Table 9.6 with respect to Bone cancer
latent_period = 10;                           // Latent period in years
plateau_period = 30;                          // Plateau period in years
rc_bone = 0.2;                                // Risk coefficient per 10^6 rem/year

n = ret_age-(start_age+latent_period);        // Number of years of accumulated dose
H = n*H_year;                                 // Total equivalent dose in rem
// Calculation
p_bone = (H*rc_bone*plateau_period)/10^6;
// Result
printf(" \n The probability of dying from bone cancer = %.1E \n",p_bone);
