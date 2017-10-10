// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.18 :
// Page number 148
clear ; clc ; close ; // Clear the work space and console

// Given data
V_r = 220.0*10**3                    // Line voltage at receiving end(V)
Z = complex(40,200)                  // Impedance per phasemag(ohm)
Y = %i*0.0015                        // Admittance(mho)
I_r = 200.0                          // Receiving end current(A)
PF_r = 0.95                          // Lagging power factor

// Calculations
// Case(a)
A = 1+(Y*Z/2)+((Y*Z)**2/24)                               // Constant
B = Z*(1+(Y*Z/6)+((Y*Z)**2/120)+((Y*Z)**3/5040))          // Constant(ohm)
C = Y*(1+(Y*Z/6)+((Y*Z)**2/120)+((Y*Z)**3/5040))          // Constant(mho)
D = A                                                     // Constant
E_r = V_r/3**0.5                                          // Receiving end phasemag voltage(V)
I_r1 = I_r*exp(%i*-acos(PF_r))                            // Line current(A)
E_s = A*E_r+B*I_r1                                        // Sending end voltage(V)
E_s_ll = 3**0.5*E_s/1000.0                                // Sending end line voltage(kV)
// Case(b)
I_s = C*E_r+D*I_r1                                        // Sending end current(A)

// Results
disp("PART II - EXAMPLE : 3.18 : SOLUTION :-")
printf("\nCase(a): Sending end voltage, E_s = %.1f∠%.2f° kV (line-to-line)", abs(E_s_ll),phasemag(E_s_ll))
printf("\nCase(b): Sending end current, I_s = %.1f∠%.2f° A\n", abs(I_s),phasemag(I_s))
printf("\nNOTE: ERROR: Z = (40+j200)Ω, not Z=(60+j200)Ω as given in problem statement")
printf("\n      Changes in obtained answer from that of textbook is due to more precision")
