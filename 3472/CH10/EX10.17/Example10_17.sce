// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.17 :
// Page number 147-148
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0                    // Frequency(Hz)
L = 160.0                   // Line length(km)
r = 0.15                    // Resistance(ohm/km/phasemag)
l = 1.2*10**-3              // Inductance(H/km/phasemag)
c = 0.008*10**-6            // Capacitance(F/km/phasemag)
g = 0.0                     // Conductance(mho/km/phasemag)

// Calculations
// Case(i) Using convergent series(Complex angles) method
z = r+%i*2*%pi*f*l                        // Impedance(ohm/km)
Z = z*L                                   // Total series impedance(ohm)
y = g+%i*2*%pi*f*c                        // Shunt admittance(S/km)
Y = y*L                                   // Total shunt admittance(S)
A = 1+(Y*Z/2)+((Y*Z)**2/24)               // Constant
B = Z*(1+(Y*Z/6)+((Y*Z)**2/120))          // Constant(ohm)
C = Y*(1+(Y*Z/6)+((Y*Z)**2/120))          // Constant(mho)
D = A                                     // Constant
// Case(ii) Using convergent series(Real angles) method
gamma_l = (Z*Y)**0.5                      // γl
alpha_l = real(gamma_l)                   // αl
beta_l = imag(gamma_l)                    // βl
Z_c = (Z/Y)**0.5                          // Surge impedance(ohm)
A_2 = cosh(gamma_l)                       // Constant
B_2 = Z_c*sinh(gamma_l)                   // Constant(ohm)
C_2 = (1/Z_c)*sinh(gamma_l)               // Constant(mho)
D_2 = A_2                                 // Constant

// Results
disp("PART II - EXAMPLE : 3.17 : SOLUTION :-")
printf("\nCase(i): Using convergent series(Complex Angles) method")
printf("\nA = D = %.3f∠%.1f° ", abs(A),phasemag(A))
printf("\nB = %.f∠%.1f° ohm", abs(B),phasemag(B))
printf("\nC = %.4f∠%.1f° mho \n", abs(C),phasemag(C))
printf("\nCase(ii): Using convergent series(Real Angles) method")
printf("\nA = D = %.3f∠%.1f° ", abs(A_2),phasemag(A_2))
printf("\nB = %.1f∠%.1f° ohm", abs(B_2),phasemag(B_2))
printf("\nC = %.4f∠%.1f° S \n", abs(C_2),phasemag(C_2))
printf("\nNOTE: Slight change in obtained answer from that of textbook is due to more precision")
