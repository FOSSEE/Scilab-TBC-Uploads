// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 6: CIRCUIT BREAKER

// EXAMPLE : 6.3 :
// Page number 545-546
clear ; clc ; close ; // Clear the work space and console

// Given data
kV = 132.0       // Voltage(kV)
pf = 0.3         // Power factor of the fault
K3 = 0.95        // Recovery voltage was 0.95 of full line value
f_n = 16000.0    // Natural frequency of the restriking transient(Hz)

// Calculations
kV_phase = kV/3**0.5                    // System voltage(kV)
sin_phi = sind(acosd(pf))               // Sinφ
K2 = 1.0
v = K2*K3*kV/3**0.5*2**0.5*sin_phi      // Active recovery voltage(kV)
V_max_restrike = 2*v                    // Maximum restriking voltage(kV)
t = 1.0/(2.0*f_n)                       // Time(sec)
RRRV = V_max_restrike/(t*10**6)         // Rate of rise of restriking voltage(kV/µ-sec)

// Results
disp("PART III - EXAMPLE : 6.3 : SOLUTION :-")
printf("\nRate of rise of restriking voltage, R.R.R.V = %.2f kV/µ-sec", RRRV)
