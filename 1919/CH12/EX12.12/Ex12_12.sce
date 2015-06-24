
// Theory and Problems of Thermodynamics
// Chapter 12
// Statistical Thermodynamics
// Example 12
clear ;clc;

//Given data
T = 100                         // Temperature of zinc in K
Cv = 18.89                      // molar heat capacity in J/mol K
R = 8.314                       // gas constant

// Calculations
Cv_Nk = Cv/R            // Cv_Nk = Cv/Nk

// From plot of Cv/Nk versus T/theta = 0.41
theta = T/0.41                  // Debye temperature in K

// Output results
mprintf('The Debye temperature = %4.1f K', theta)
        
