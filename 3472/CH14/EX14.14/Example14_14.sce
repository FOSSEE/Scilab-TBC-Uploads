// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.14 :
// Page number 219-220
clear ; clc ; close ; // Clear the work space and console

// Given data
c_s = 0.90        // Capacitance b/w all conductors(µF)
C_0 = 0.4         // Capacitance b/w two conductor(µF)
V = 11.0*10**3    // Line Voltage(V)
f = 50.0          // Frequency(Hz)

// Calculations
C_s = c_s/3.0                              // Capacitance measured(µF)
C_c = (C_0-C_s)/2.0                        // Capacitance(µF)
C_a = 3.0/2*(C_c+(1/3.0)*C_s)              // Capacitance b/w any two conductors(µF)
C_b = 2.0*C_c+(2.0/3)*C_s                  // Capacitance b/w any two bounded conductors and the third conductor(µF)
C_o = 3.0*C_c+C_s                          // Capacitance to neutral(µF)
I_c = 2.0*%pi*f*C_o*V/3**0.5*10**-6        // Charging current(A)

// Results
disp("PART II - EXAMPLE : 7.14 : SOLUTION :-")
printf("\nCase(a): Capacitance between any two conductors = %.3f µF", C_a)
printf("\nCase(b): Capacitance between any two bounded conductors and the third conductor = %.1f µF", C_b)
printf("\nCase(c): Capacitance to neutral, C_0 = %.2f µF", C_o)
printf("\n         Charging current taken by cable, I_c = %.3f A \n", I_c)
printf("\nNOTE: ERROR: Calculation mistakes in textbook answer")
