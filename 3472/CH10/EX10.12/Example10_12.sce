// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.12 :
// Page number 143
clear ; clc ; close ; // Clear the work space and console

// Given data
E_s = 275.0                 // Sending end voltage(kV)
f = 50.0                    // Frequency(Hz)
l = 400.0                   // Line length(km)
x = 0.05                    // Inductive reactance(ohm/km)
y = 3.0*10**-6              // Line charging susceptance(S/km)
r = 0.0                     // Lossless line

// Calculations
// Case(a)
R = r*l                     // Total resistance(ohm/phase)
X = x*l                     // Inductive reactance(ohm/phase)
Y = y*l                     // Susceptance(mho)
Z = complex(R,X)            // Total impedance(ohm/phase)
A = 1+(Y*Z/2)*%i            // Line constant
E_r = E_s/abs(A)            // Receiving end voltage at no load(kV)
// case(b)
Z_0 = (X/Y)**0.5            // Load at receiving end(ohm)
// Case(c)
Z_0_new = 1.2*Z_0           // New load at receiving station(ohm)

// Results
disp("PART II - EXAMPLE : 3.12 : SOLUTION :-")
printf("\nCase(a): Receiving end voltage on open circuit = %.1f kV", E_r)
printf("\nCase(b): Load at receiving end for flat voltage profile on line, Z_0 = %.1f Ω", Z_0)
printf("\nCase(c): Distributed inductive reactance of the line is to be increased as, Loading for new voltage profile = %.2f Ω", Z_0_new)
