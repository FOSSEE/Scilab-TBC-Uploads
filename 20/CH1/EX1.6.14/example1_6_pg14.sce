// Example1_6_pg14.sce
// To find secondary resistance and reactance
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 14


clear; clc; close;

// Given data
volt_amp = 10e+3; // Volt Ampere rating of transformer is 10kA
volt_ratio = 440/110; // Transformer voltage ratio
freq_tr = 60; // Frequency of transformer usage is 60cps or 60Hz
pri_res = 0.50; // Primary resistance is 0.50 Ohm
sec_res = 0.032; // Secondary resistance is 0.032 Ohm
pri_reac = 0.90; // Primary leakage reactance is 0.90 Ohm
sec_reac = 0.06; //Secondary leakage reactance is 0.06 Ohm

// Calculations
printf("The ratio of transformation is %d", volt_ratio);
sec_res_ref_pri = sec_res*(volt_ratio^2); // Ohms
sec_reac_ref_pri = sec_reac*(volt_ratio^2); // Ohms

disp('Hence,');
printf("Secondary resistance referred to the primary = %0.3f Ohm \n",sec_res_ref_pri); // Ohms
printf("Secondary reactance referred to the primary = %0.2f Ohm",sec_reac_ref_pri); // Ohms

// Result
// The ratio of transformation is 4
// Secondary resistance referred to the primary is 0.512 Ohm
// Secondary reactance referred to the primary is 0.96 Ohm
