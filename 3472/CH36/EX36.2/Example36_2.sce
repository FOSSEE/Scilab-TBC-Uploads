// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 10: PROTECTION OF TRANSMISSION LINE, SHUNT INDUCTORS AND CAPACITORS

// EXAMPLE : 10.2 :
// Page number 648
clear ; clc ; close ; // Clear the work space and console

// Given data
CT_ratio = 300.0/5          // CT ratio
PT_ratio = 166000.0/110     // PT ratio
Z_AB = complex(40.0,160.0)  // Section AB impedance(ohm)
Z_BC = complex(7.5,15.0)    // Section BC impedance(ohm)
kV_hv = 166.0               // HV side voltage(kV)
kV_lv = 33.0                // LV side voltage(kV)
MVA = 5.0                   // Transformer rating(MVA)
X_T = 6.04                  // Transformer reactance(%)

// Calculations
Z_T = %i*10*X_T*kV_hv**2/(MVA*1000)   // Tranformer impedance(ohm)
Z_fault = Z_AB+Z_T                    // Fault impedance(ohm)
Z_sec = Z_fault*CT_ratio/PT_ratio     // Relay setting for primary protection(ohm)
Z_BC_hv = Z_BC*(kV_hv/kV_lv)**2       // Z_BC on 166 kV base(ohm)
Z = Z_AB+Z_T+Z_BC_hv                  // For backup protection of line BC(ohm)
Z_sec_set = Z*CT_ratio/PT_ratio       // Relay setting(ohm)

// Results
disp("PART III - EXAMPLE : 10.2 : SOLUTION :-")
printf("\nImpedance seen by relay = (%.f + %.fj) ohm", real(Z_fault),imag(Z_fault))
printf("\nRelay setting for high speed & backup protection = (%.1f + %.2fj) ohm", real(Z_sec_set),imag(Z_sec_set))
