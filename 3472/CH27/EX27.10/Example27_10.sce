// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.10 :
// Page number 472
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA_alt = 625.0       // Alternator rating(kVA)
V_alt = 480.0         // Voltage rating of alternator(V)
load = 500.0          // Load(kW)
V_load = 480.0        // Load voltage(V)
X_st = 8.0/100        // Sub-transient reactance

// Calculations
kVA_base = 625.0            // Base kVA
V_base = 480.0              // Base voltage(V)
I_load = load/kVA_base      // Load cuurent(A)
V = 1.0                     // Terminal voltage(p.u)
E_st = V+%i*I_load*X_st     // Sub-transient voltage(p.u)
I_st = E_st/(%i*X_st)       // Sub-transient current(p.u)

// Results
disp("PART III - EXAMPLE : 1.10 : SOLUTION :-")
printf("\nInitial symmetrical rms current at the generator terminal = (%.1f%.1fj) p.u", real(I_st),imag(I_st))
