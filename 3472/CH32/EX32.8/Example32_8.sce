// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 6: CIRCUIT BREAKER

// EXAMPLE : 6.8 :
// Page number 569
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA = 7500.0    // Rated kVA
X_st = 9.0      // Sub-transient reactance(%)
X_t = 15.0      // Transient reactance(%)
X_d = 100.0     // Direct-axis reactance(%)
kV = 13.8       // Voltage(kV). Assumption

// Calculations
kVA_base = 7500.0                       // Base kVA
kVA_sc_sustained = kVA_base/X_d*100     // Sustained S.C kVA
I_sc_sustained = kVA_base/(3**0.5*kV)   // Sustained S.C current(A). rms
I_st = kVA*100/(X_st*3**0.5*kV)         // Initial symmetrical rms current in the breaker(A)
I_max_dc = 2**0.5*I_st                  // Maximum possible dc component of the short-circuit(A)
I_moment = 1.6*I_st                     // Momentary current rating of the breaker(A)
I_interrupt = 1.1*I_st                  // Current to be interrupted by the breaker(A)
I_kVA = 3**0.5*I_interrupt*kV           // Interrupting kVA

// Results
disp("PART III - EXAMPLE : 6.8 : SOLUTION :-")
printf("\nCase(a): Sustained short circuit KVA in the breaker = %.f kVA", kVA_sc_sustained)
printf("\n         Sustained short circuit current in the breaker = %.1f A (rms)", I_sc_sustained)
printf("\nCase(b): Initial symmetrical rms current in the breaker = %.f A (rms)", I_st)
printf("\nCase(c): Maximum possible dc component of the short-circuit in the breaker = %.f A", I_max_dc)
printf("\nCase(d): Momentary current rating of the breaker = %.f A (rms)", I_moment)
printf("\nCase(e): Current to be interrupted by the breaker = %.f A (rms)", I_interrupt)
printf("\nCase(f): Interrupting kVA = %.f kVA \n", I_kVA)
printf("\nNOTE: Changes in the obtained answer from that of textbook due to more approximation in textbook")
