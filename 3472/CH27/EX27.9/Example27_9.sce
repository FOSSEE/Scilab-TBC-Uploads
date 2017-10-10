// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.9 :
// Page number 472
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA_G = 7500.0         // Generator rating(kVA)
kV_G = 6.9             // Voltage rating of generator(kV)
X_d_st = 9.0/100       // Sub-transient reactance of generator
X_d_t = 15.0/100       // Transient reactance of generator
X_d = 100.0            // Synchronous reactance of generator(%)
kVA_T = 7500.0         // Transformer rating(kVA)
kV_T_delta = 6.9       // Voltage rating of transformer delta side(kV)
kV_T_wye = 115.0       // Voltage rating of transformer wye side(kV)
X = 10.0/100           // Transformer reactance

// Calculations
I_base_ht = kVA_T/(3**0.5*kV_T_wye)     // Base current at ht side(A)
I_base_lt = kVA_T/(3**0.5*kV_T_delta)   // Base current at lt side(A)
I_f_st = 1.0/(%i*(X_d_st+X))            // Sub-transient current after fault(p.u)
I_f_ht = abs(I_f_st)*I_base_ht          // Initial fault current in h.t side(A)
I_f_lt = abs(I_f_st)*I_base_lt          // Initial fault current in l.t side(A)

// Results
disp("PART III - EXAMPLE : 1.9 : SOLUTION :-")
printf("\nInitial symmetrical rms current in the h.v side = %.f A", I_f_ht)
printf("\nInitial symmetrical rms current in the l.v side = %.f A \n", I_f_lt)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
