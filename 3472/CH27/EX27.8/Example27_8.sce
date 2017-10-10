// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.8 :
// Page number 472
clear ; clc ; close ; // Clear the work space and console

// Given data
X_d_st = 0.2       // Sub-transient reactance(p.u)
X_d_t = 0.4        // Transient reactance(p.u)
X_d = 1.0          // Direct axis reactance(p.u)
I_pu = 1.0         // Load current(p.u)
PF = 0.80          // Lagging power factor

// Calculations
V = 1.0                     // Terminal voltage(p.u)
sin_phi = (1-PF**2)**0.5
I = I_pu*(PF-%i*sin_phi)    // Load current(p.u)
E_st = V+%i*I*X_d_st        // Voltage behind sub-transient reactance(p.u)
E_t = V+%i*I*X_d_t          // Voltage behind transient reactance(p.u)
E = V+%i*I*X_d              // Voltage behind direct axis reactance(p.u)

// Results
disp("PART III - EXAMPLE : 1.8 : SOLUTION :-")
printf("\nVoltage behind sub-transient reactance = %.2f∠%.2f° p.u", abs(E_st),phasemag(E_st))
printf("\nVoltage behind transient reactance = %.2f∠%.2f° p.u", abs(E_t),phasemag(E_t))
printf("\nVoltage behind direct axis reactance, E = %.2f∠%.2f° p.u", abs(E),phasemag(E))
