// Example 9.3
clear all;
clc;

// Given data
H = 25;                                       // Equivalent dose in rem
age = 30;                                     // Age of worker in years
exp_age = 77;                                 // Average age upto which a person lives in years
// Using data from Table 9.6
// Bone cancer
rc_bone = 0.2;                                // Risk coefficient per 10^6 rem/year
lp_bone = 10;                                 // Latent period in years
// Probability of dying from bone cancer 
p_bone=(H*rc_bone*(exp_age-(lp_bone+age)))/10^6;

// Breast cancer
rc_breast = 1.5;                               // Risk coefficient per 10^6 rem/year
lp_breast = 15;                                // Latent period in years
// Probability of dying from breast cancer 
p_breast = (H*rc_breast*(exp_age-(lp_breast+age)))/10^6;

// Leukemia
rc_leukemia = 1;                              // Risk coefficient per 10^6 rem/year
lp_leukemia = 2;                              // Latent period in years
// Probability of dying from leukemia 
p_leukemia = (H*rc_leukemia*(exp_age-(lp_leukemia+age)))/10^6;

// Lung cancer
rc_lung = 1;                                  // Risk coefficient per 10^6 rem/year
lp_lung = 15;                                 // Latent period in years
// Probability of dying from lung cancer
p_lung = (H*rc_lung*(exp_age-(lp_lung+age)))/10^6;

// Pancreatic cancer
rc_pancreas = 0.2;                             // Risk coefficient per 10^6 rem/year
lp_pancreas = 15;                              // Latent period in years
// Probability of dying from Pancreatic cancer
p_pancreas = (H*rc_pancreas*(exp_age-(lp_pancreas+age)))/10^6;

// Stomach cancer
rc_stomach = 0.6;                              // Risk coefficient per 10^6 rem/year
lp_stomach = 15;                               // Latent period in years
// Probability of dying from stomach cancer
p_stomach = (H*rc_stomach*(exp_age-(lp_stomach+age)))/10^6;

// Rest of alimentary cancer
rc_ali = 0.2;                                  // Risk coefficient per 10^6 rem/year
lp_ali = 15;                                   // Latent period in years
// Probability of dying from rest of alimentary cancer
p_ali = (H*rc_ali*(exp_age-(lp_ali+age)))/10^6;

// Thyroid cancer
rc_thy = 0.43;                                  // Risk coefficient per 10^6 rem/year
lp_thy = 10;                                    // Latent period in years
// Probability of dying from thyroid cancer
p_thy = (H*rc_thy*(exp_age-(lp_thy+age)))/10^6;

// All other type of cancer
rc_other = 1;                                   // Risk coefficient per 10^6 rem/year
lp_other = 15;                                  // Latent period in years
// Probability of dying from all other type of cancer
p_other = (H*rc_other*(exp_age-(lp_other+age)))/10^6;

// Calculation
p = p_bone+p_breast+p_leukemia+p_lung+p_pancreas+p_stomach+p_ali+p_thy+p_other;
// Result
printf('\n Probability that the worker will die from cancer = %.1E \n',p);

// The value obtained is different from the value given in the textbook. This is because of approximation of individual probabilities in the textbook.
