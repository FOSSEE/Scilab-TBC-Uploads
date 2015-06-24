// Scilab code Ex14.11 : Pg:725(2011)
clc;clear;
delta_IC = 1e-03;   // Change in collector current, A
delta_IB = 50e-06;   // Change in base current, A
bta = delta_IC/delta_IB;  // Base current amplification factor
alpha = bta/(1+bta);    // Emitter current amplification factor
printf("\nAlpha of BJT = %4.2f", alpha);
printf("\nBeta of BJT = %2d", bta);


// Result
// Alpha of BJT = 0.95
// Beta of BJT = 20 
