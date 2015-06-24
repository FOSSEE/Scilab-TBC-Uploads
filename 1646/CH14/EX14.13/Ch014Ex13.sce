// Scilab code Ex14.13 : Pg:725(2011)
clc;clear;
I_CBO = 12.5e-03;   // Reverse saturation current, mA
I_E = 2;    // Emitter current, mA
I_C = 1.97; // Collector current, mA
// As I_C = alpha*I_E+I_CBO, solving for alpha
alpha = (I_C - I_CBO)/I_E;  // Emitter current gain
I_B = I_E - I_C;    // Base current, mA
printf("\nThe emitter current gain = %5.3f", alpha);
printf("\nThe base current = %4.2f mA", I_B);


// Result
// The emitter current gain = 0.979
// The base current = 0.03 mA 
