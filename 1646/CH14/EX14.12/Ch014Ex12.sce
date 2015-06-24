// Scilab code Ex14.12 : Pg:725(2011)
clc;clear;
I_E = 2;    // Emitter current, mA
alpha = 0.88;   // Emitter current amplification factor
I_C = alpha*I_E;    // Collector current, mA
I_B = I_E - I_C;        // Base current of BJT in CB mode, mA
printf("\nThe base current of BJT in CB mode = %4.2f mA", I_B);


// Result
// The base current of BJT in CB mode = 0.24 mA
