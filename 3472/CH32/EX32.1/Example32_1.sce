// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 6: CIRCUIT BREAKER

// EXAMPLE : 6.1 :
// Page number 545
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0          // Generator frequency(Hz)
kV = 7.5          // emf to neutral rms voltage(kV)
X = 4.0           // Reactance of generator & connected system(ohm)
C = 0.01*10**-6   // Distributed capacitance(F)

// Calculations
// Case(a)
v = 2**0.5*kV                           // Active recovery voltage i.e phase to neutral(kV)
V_max_restrike = v*2                    // Maximum restriking voltage i.e phase to neutral(kV)
// Case(b)
L = X/(2.0*%pi*f)                       // Inductance(H)
f_n = 1/(2.0*%pi*(L*C)**0.5*1000)       // Frequency of transient oscillation(kHZ)
// Case(c)
t = 1.0/(2.0*f_n*1000)                  // Time(sec)
avg_rate = V_max_restrike/t             // Average rate of rise of voltage upto first peak of oscillation(kV/s)

// Results
disp("PART III - EXAMPLE : 6.1 : SOLUTION :-")
printf("\nCase(a): Maximum re-striking voltage(phase-to-neutral) = %.1f kV", V_max_restrike)
printf("\nCase(b): Frequency of transient oscillation, f_n = %.1f kHz", f_n)
printf("\nCase(c): Average rate of rise of voltage upto first peak of oscillation = %.f kV/s \n", avg_rate)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more approximation in the textbook")
