// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.15 :
// Page number 145
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0                      // Frequency(Hz)
L = 200.0                     // Line length(km)
l = 1.20*10**-3               // Inductance(H/km)
c = 8.0*10**-9                // Capacitance(F/km)
r = 0.15                      // Resistance(ohm/km)
g = 0.0                       // Conductance(mho/km)

// Calculations
z = r+%i*2*%pi*f*l                      // Total impedance(ohm/km)
Z = z*L                                 // Total impedance(ohm)
y = g+%i*2*%pi*f*c                      // Total susceptance(mho/km)
Y = y*L                                 // Total susceptance(mho/km)
gamma_l = (Z*Y)**0.5                    // γl
alpha_l = real(gamma_l)                 // αl
beta_l = imag(gamma_l)                  // βl
Z_c = (Z/Y)**0.5                        // Surge impedance(ohm)
A = cosh(gamma_l)                       // Constant
B = Z_c*sinh(gamma_l)                   // Constant(ohm)
C = (1/Z_c)*sinh(gamma_l)               // Constant(S)
D = A                                   // Constant

// Results
disp("PART II - EXAMPLE : 3.15 : SOLUTION :-")
printf("\nA = D = %.3f∠%.2f° ", abs(A),phasemag(A))
printf("\nB = %.2f∠%.3f° Ω", abs(B),phasemag(B))
printf("\nC = %.2e∠%.3f° S", abs(C),phasemag(C))
