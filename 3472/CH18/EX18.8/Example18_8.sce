// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.8 :
// Page number 335
clear ; clc ; close ; // Clear the work space and console

// Given data
V_tie = 11000.0         // Tie line Voltage(V)
Z = (3.5+%i*7.0)        // Impedance of tie line(ohm/conductor)
V = 6600.0              // Bus bar voltage(V)
Z_per = (2.5+%i*7.5)    // Percentage impedance on 1000kVA rating
kVA = 2500.0            // Load receieved by other(kVA)

// Calculations
V_ph = V/3**0.5                            // Phase voltage(V)
I_fl_LV = 100.0*V_tie/V_ph                 // LV side Full load current of each transformer(A)
R_eq = V_ph*real(Z_per)/(100*I_fl_LV)      // Equivalent resistance of transformer(ohm/phase)
X_eq = 3.0*R_eq                            // Equivalent reactance of transformer(ohm/phase)
R_phase = real(Z)*(V/V_tie)**2             // Resistance of line per phase(ohm)
X_phase = imag(Z)*(V/V_tie)**2             // Resistance of line per phase(ohm)
R_total = 2.0*R_eq+R_phase                 // Total resistance per phase(ohm)
X_total = 2.0*X_eq+X_phase                 // Total resistance per phase(ohm)
Z_total = R_total+%i*X_total               // Total impedance(ohm/phase)
I = kVA*1000/(3**0.5*V)                    // Load current(A)
V_drop = I*Z_total                         // Voltage drop per phase(V)
V_A = V_ph
V_AA = V_A+V_drop                          // Sending end voltage per phase(V)
V_increase = abs(V_AA)-V_A                 // Increase in voltage required(V/phase)
percentage_increase = V_increase/V_A*100   // Percentage increase required(%)
phase_diff = phasemag(V_AA)                // Angle at which V_A & V_B are displaced(°)

// Results
disp("PART II - EXAMPLE : 11.8 : SOLUTION :-")
printf("\nCase(a): Percentage increase in voltage = %.2f percent", percentage_increase)
printf("\nCase(b): Phase angle difference between the two busbar voltages = %.2f° \n", phase_diff)
printf("\nNOTE: ERROR: Several calculation mistakes in the textbook")
