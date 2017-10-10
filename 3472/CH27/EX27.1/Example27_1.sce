// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.1 :
// Page number 466-467
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 500.0                   // Generator voltage(V)
rating = 10.0               // Rating of the generator(kVA)
n_up = 1.0/2                // Turns ratio of step-up transformer
Z_line = complex(1.0,2.0)   // Transmission line impedance(ohm)
n_down = 10.0/1             // Turns ratio of step-down transformer
load = complex(2.0,4.0)     // Load(ohm)

// Calculations
V_base_gen = V                                 // Base voltage(V)
kVA_base_gen = rating                          // Base rating(kVA)
I_base_gen = kVA_base_gen*1000/V_base_gen      // Base current(A)
Z_base_gen = V_base_gen/I_base_gen             // Base impedance(ohm)
V_base_line = V_base_gen/n_up                  // Voltage base of the transmission line(V)
kVA_base_line = rating                         // Base rating of transmission line(kVA)
I_base_line = kVA_base_line*1000/V_base_line   // Base current of transmission line(A)
Z_base_line = V_base_line/I_base_line          // Base impedance of transmission line(ohm)
Z_line_1 = Z_line/Z_base_line                  // Impedance of transmission line(p.u)
V_base_load = V_base_line/n_down               // Base voltage at the load(V)
kVA_base_load = rating                         // Base rating of load(kVA)
I_base_load = kVA_base_load*1000/V_base_load   // Base current of load(A)
Z_base_load = V_base_load/I_base_load          // Base impedance of load(ohm)
Z_load = load/Z_base_load                      // Load impedance(p.u)
Z_total = Z_line_1+Z_load                      // Total impedance(p.u)
I = 1.0/Z_total                                // Current(p.u)

// Results
disp("PART III - EXAMPLE : 1.1 : SOLUTION :-")
printf("\nCurrent, I = %.3f∠%.2f° p.u", abs(I),phasemag(I))
