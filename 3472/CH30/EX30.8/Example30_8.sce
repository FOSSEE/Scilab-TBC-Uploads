// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.8 :
// Page number 518-519
clear ; clc ; close ; // Clear the work space and console

// Given data
kV_G = 11.0               // Generator rating(kV)
X_1_G = %i*0.1            // Positive sequence reactance of generator(p.u)
X_2_G = %i*0.1            // Negative sequence reactance of generator(p.u)
X_0_G = %i*0.02           // Zero sequence reactance of generator(p.u)
Z = 1.0                   // Earthing resistor(ohm) 
X_1_T1 = %i*0.1           // Positive sequence reactance of 2-winding transformer(p.u)
X_2_T1 = %i*0.1           // Negative sequence reactance of 2-winding transformer(p.u)
X_0_T1 = %i*0.1           // Zero sequence reactanc of 2-winding transformere(p.u)
X_1_T2_hv = %i*0.05       // Positive sequence reactance of hv 3-winding transformer(p.u)
X_2_T2_hv = %i*0.05       // Negative sequence reactance of hv 3-winding transformer(p.u)
X_0_T2_hv = %i*0.05       // Zero sequence reactanc of hv 3-winding transformere(p.u)
X_1_T2_lv_1 = %i*0.02     // Positive sequence reactance of lv 3-winding transformer(p.u)
X_2_T2_lv_1 = %i*0.02     // Negative sequence reactance of lv 3-winding transformer(p.u)
X_0_T2_lv_1 = %i*0.02     // Zero sequence reactanc of lv 3-winding transformere(p.u)
X_1_T2_lv_2 = %i*0.05     // Positive sequence reactance of lv 3-winding transformer(p.u)
X_2_T2_lv_2 = %i*0.05     // Negative sequence reactance of lv 3-winding transformer(p.u)
X_0_T2_lv_2 = %i*0.05     // Zero sequence reactanc of lv 3-winding transformere(p.u)

// Calculations
MVA_b = 10.0                                                                             // Base MVA
kV_b = 11.0                                                                              // Base voltage(kV)
Z_n = Z*MVA_b/kV_b**2                                                                    // Impedance(p.u)
Z_1 = X_1_G+X_1_T1+X_1_T2_hv+((X_1_T2_lv_1*X_1_T2_lv_2)/(X_1_T2_lv_1+X_1_T2_lv_2))       // Positive sequence impedance(p.u)
Z_2 = X_2_G+X_2_T1+X_2_T2_hv+((X_2_T2_lv_1*X_2_T2_lv_2)/(X_2_T2_lv_1+X_2_T2_lv_2))       // Negative sequence impedance(p.u)
Z_0 = ((X_0_T1+X_0_T2_hv)*X_0_T2_lv_2/(X_0_T1+X_0_T2_hv+X_0_T2_lv_2))+X_0_T2_lv_1+3*Z_n  // Zero sequence impedance(p.u)
E = 1.0                                                                                  // Voltage(p.u)
I_f_pu = 3*E/(Z_1+Z_2+Z_0)                                                               // Fault current(p.u)
I_f = MVA_b*1000*abs(I_f_pu)/(3**0.5*kV_b)                                               // Fault current(A)

// Results
disp("PART III - EXAMPLE : 4.8 : SOLUTION :-")
printf("\nFault current, I_f = %.f A\n", I_f)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
