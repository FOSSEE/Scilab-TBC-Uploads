
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 2

clear ;clc;

//Given data
X1 = 0.5                // volume fraction of propane 
X2 = 0.5                // volume fraction of oxygen 
P1 = 0.1                // initial pressure of mixture in MPa 
T1 = 300                // initial temperature of mixture in K
P2 = 1.0                // final pressure of mixture in MPa
N = 100                 // number moles of gas mixture
Cp1 = 74.0565           // molar heat capacity of propone in kJ/mol K
Cv1 = 65.7442           // molar heat capacity of propone in kJ/mol K
Cp2 = 29.4912           // molar heat capacity of oxygen  in kJ/mol K
Cv2 = 21.1776           // molar heat capacity of oxygen  in kJ/mol K

// Calculations
Cp_m = X1*Cp1 + X2*Cp2  // molar heat capacity of gas mixture
Cv_m = X1*Cv1 + X2*Cv2  // molar heat capacity of gas mixture

gam = Cp_m/Cv_m         // specific heat ratio

T2 = T1*((P2/P1)^((gam-1)/gam))  // final temperature of mixture

W = -N*Cv_m*(T2-T1)              // Work  required to compress gas mixture

W = W*1e-3                       // units conversion J to kJ

// Output Results
mprintf('Final temperature of gas mixture = %4.1f K' ,T2);
mprintf('\n Work  required to compress 100 mol of gas mixture = %4.2f kJ' ,W);
