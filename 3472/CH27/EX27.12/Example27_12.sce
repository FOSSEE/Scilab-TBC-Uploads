// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.12 :
// Page number 473-474
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA_G = 625.0            // Generator rating(kVA)
V_G = 2.4                // Voltage rating of generator(kV)
X_st_G = 8.0/100         // Sub-transient reactance of generator
rating_M = 250.0         // Motor rating(HP)
V_M = 2.4                // Voltage rating of motor(kV)
n = 90.0/100             // Efficiency of motor
X_st_M = 20.0/100        // Sub-transient reactance of motor

// Calculations
kVA_base = 625.0                                      // Base kVA
input_M = rating_M*0.746/n                            // Each motor input(kVA)
X_st_m_pu = X_st_M*kVA_base/input_M                   // Sub-transient reactance of motor(p.u)
I_base = kVA_base/(3**0.5*V_M)                        // Base current(A)
Z_th = %i*X_st_m_pu/3*X_st_G/(X_st_m_pu/3+X_st_G)     // Thevenin impedance(p.u)
I_st = 1.0/Z_th                                       // Initial symmetrical current at F(p.u)
I_st_g = I_st*(X_st_m_pu/3/(X_st_m_pu/3+X_st_G))      // Fault current rating of generator breaker(p.u)
I_st_m = (I_st-I_st_g)/3                              // Fault current rating of each motor breaker(p.u)

// Results
disp("PART III - EXAMPLE : 1.12 : SOLUTION :-")
printf("\nSub-transient fault current at F = %.2fj p.u", imag(I_st))
printf("\nFault current rating of generator breaker = %.1fj p.u", imag(I_st_g))
printf("\nFault current rating of each motor breaker = %.2fj p.u", imag(I_st_m))
