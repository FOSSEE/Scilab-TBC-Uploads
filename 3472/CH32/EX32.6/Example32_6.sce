// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 6: CIRCUIT BREAKER

// EXAMPLE : 6.6 :
// Page number 567
clear ; clc ; close ; // Clear the work space and console

// Given data
I = 1200.0     // Rated normal current(A)
MVA = 1500.0   // Rated MVA
kV = 33.0      // Voltage(kV)

// Calculations
I_breaking = MVA/(3**0.5*kV)   // Rated symmetrical breaking current(kA)
I_making = I_breaking*2.55     // Rated making current(kA)
I_short = I_breaking           // Short-time rating(kA)

// Results
disp("PART III - EXAMPLE : 6.6 : SOLUTION :-")
printf("\nRated normal current = %.f A", I)
printf("\nBreaking current = %.2f kA (rms)", I_breaking)
printf("\nMaking current = %.f kA", I_making)
printf("\nShort-time rating = %.2f kA for 3 secs", I_short)
