// Scilab code Ex17.17 : Pg:898 (2011)
clc;clear;
I = 15.7;    // Ionization potential of argon in GM counter, volt
a = 0.012/2*1e-02;    // Radius of GM counter wire, m
b = 5/2*1e-02;    // Radius of cathode, m
lambda = 7.8e-006;    // Mean free path of argon in GM counter, m
// As E*lambda = I = V*lambda/(2.3026*a*log10(b/a)), solving for V
V = 2.3026*a*I*log10(b/a)/lambda;    // Voltage that must be applied to produce an avalanche in GM tube, volt
printf("\nThe voltage that must be applied to produce an avalanche in GM tube = %6.2f volt", V);

// Result
// The voltage that must be applied to produce an avalanche in GM tube = 728.52 volt 
