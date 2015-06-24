// Scilab code Exa4.6 :  : Page 179 (2011)
clc; clear;
C_r = 0.1e-02;     // Counting rate of GM tube
S = 3;             // Slope of the curve
V = C_r*100*100/S;       // Voltage fluctuation, volt
printf("\nThe voltage fluctuation GM tube = %4.2f volt", V);

// Result
// The voltage fluctuation GM tube = 3.33 volt 