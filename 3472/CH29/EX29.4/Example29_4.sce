// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 3: SYMMETRICAL COMPONENTS' ANALYSIS

// EXAMPLE : 3.4 :
// Page number 489-490
clear ; clc ; close ; // Clear the work space and console

// Given data
R_bc = 5.0    // Resistance of resistor connected b/w b & c(ohm)
R_ca = 10.0   // Resistance of resistor connected b/w c & a(ohm)
R_ab = 20.0   // Resistance of resistor connected b/w a & b(ohm)
V = 100.0     // Voltage of balanced system(V)

// Calculations
E_A = -V                                     // Voltage across resistor connected b/w b & c(V)
angle = 60.0                                 // Angle in delta system(°)
E_B = V*exp(%i*60.0*%pi/180)                 // Voltage across resistor connected b/w c & a(V)
E_C = V*exp(%i*-60.0*%pi/180)                // Voltage across resistor connected b/w a & b(V)
I_A = E_A/R_bc                               // Current flowing across resistor connected b/w b & c(A)
I_B = E_B/R_ca                               // Current flowing across resistor connected b/w c & a(A)
I_C = E_C/R_ab                               // Current flowing across resistor connected b/w a & b(A)
alpha = exp(%i*120.0*%pi/180)                // Operator
I_A0 = 1.0/3*(I_A+I_B+I_C)                   // Zero sequence delta current(A)
I_A1 = 1.0/3*(I_A+alpha*I_B+alpha**2*I_C)    // Positive sequence delta current(A)
I_A2 = 1.0/3*(I_A+alpha**2*I_B+alpha*I_C)    // Negative sequence delta current(A)
I_a0 = 0.0                                   // Zero sequence star current(A)
I_a1 = (alpha-alpha**2)*I_A1                 // Positive sequence star current(A)
I_a2 = (alpha**2-alpha)*I_A2                 // Negative sequence star current(A)

// Results
disp("PART III - EXAMPLE : 3.4 : SOLUTION :-")
printf("\nCurrent in the resistors are:")
printf("\n I_A = (%.f+%.fj) A", real(I_A),imag(I_A))
printf("\n I_B = (%.f+%.2fj) A", real(I_B),imag(I_B))
printf("\n I_C = (%.1f%.2fj) A", real(I_C),imag(I_C))
printf("\nSequence components of currents in the resistors:")
printf("\n Zero-sequence current, I_A0 = (%.3f+%.2fj) A", real(I_A0),imag(I_A0))
printf("\n Positive-sequence current, I_A1 = (%.2f+%.fj) A", real(I_A1),imag(I_A1))
printf("\n Negative-sequence current, I_A2 = (%.2f%.2fj) A", real(I_A2),imag(I_A2))
printf("\nSequence components of currents in the supply lines:")
printf("\n Zero-sequence current, I_a0 = %.f A", I_a0)
printf("\n Positive-sequence current, I_a1 = %.1fj A", imag(I_a1))
printf("\n Negative-sequence current, I_a2 = (%.1f+%.2fj) A", real(I_a2),imag(I_a2))
