// Scilab code Ex14.15 : Pg:726(2011)
clc;clear;
R_i = 50;   // Dynamic input resistance of PNP transistor, ohm
R_L = 5e+03;    // Load resistance in collector circuit, ohm
alpha = 0.96;   // Emitter current amplification factor
A_v = alpha*R_L/R_i;    // Voltage gain
A_p = alpha*A_v;    // Power gain
printf("\nThe voltage gain = %2g", A_v);
printf("\nThe power gain = %2d", A_p);


// Result
// The voltage gain = 96
// The power gain = 92 
