// Scilab code Ex14.14 : Pg:726(2011)
clc;clear;
alpha = 0.98;   // Emitter current amplification factor
bta = alpha/(1-alpha);  // Emitter current amplification factor
I_CBO = 5e-06;  // Reverse saturation current, A
I_CEO = 1/(1-alpha)*I_CBO;  // Leakage current of BJT in CE mode, mA
printf("\nThe base current gain = %2g", bta);
printf("\nThe leakage current of BJT in CE mode = %4.2f mA", I_CEO/1e-03);


// Result
// The base current gain = 49
// The leakage current of BJT in CE mode = 0.25 mA 
