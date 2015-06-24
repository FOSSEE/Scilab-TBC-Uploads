// Scilab code Exa6.13: : Page-245 (2011)
clc; clear;
Q_EC = 850;        // Q value for holmium 161, keV
B_p = 2.0;    // Binding energy for p-orbital electron, keV
B_s = 1.8;        // Binding energy for s-orbital electron, keV
M_ratio = 0.05*(Q_EC-B_p)^2/(Q_EC-B_s)^2;    // Matrix ratio
Q_EC = 2.5;        // Q value for holmium 163, keV
C_rate = M_ratio*(Q_EC-B_s)^2/(Q_EC-B_p)^2*100;    // The relative capture rate in holmium, percent
printf("\nThe relative capture rate in holmium 161 = %3.1f percent", C_rate);

// Result
// The relative capture rate in holmium 161 = 9.8 percent 