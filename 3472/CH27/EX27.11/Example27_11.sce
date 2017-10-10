// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.11 :
// Page number 472-473
clear ; clc ; close ; // Clear the work space and console

// Given data
X_d_st_G = 0.15      // Sub-transient reactance of generator(p.u)
X_d_st_M = 0.45      // Sub-transient reactance of motor(p.u)
X = 0.10             // Leakage reactance of transformer(p.u)
V = 0.9              // Terminal voltage of the generator(p.u)
I_G = 1.0            // Output current of the generator(p.u)
PF = 0.8             // Power factor of the load

// Calculations
sin_phi = (1-PF**2)**0.5
I = I_G*(PF+%i*sin_phi)            // Load current(p.u)
E_st_G = V+%i*I*X_d_st_G           // Sub-transient voltage of the generator(p.u)
E_st_M = V-%i*I*X_d_st_M           // Sub-transient voltage of the motor(p.u)
I_st_g = E_st_G/(%i*(X_d_st_G+X))  // Sub-transient current in the generator at fault(p.u)
I_st_m = E_st_M/(%i*(X_d_st_M-X))  // Sub-transient current in the motor at fault(p.u)

// Results
disp("PART III - EXAMPLE : 1.11 : SOLUTION :-")
printf("\nCase(a): Sub-transient current in the fault in generator = %.3f∠%.3f° p.u", abs(I_st_g),phasemag(I_st_g))
printf("\nCase(b): Sub-transient current in the fault in motor = %.3f∠%.2f° p.u \n", abs(I_st_m),180+phasemag(I_st_m))
printf("\nNOTE: ERROR: Sub-transient reactance of motor is 0.45 p.u & not 0.35 p.u as mentioned in textbook statement")
