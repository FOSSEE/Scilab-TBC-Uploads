// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 10: PROTECTION OF TRANSMISSION LINE, SHUNT INDUCTORS AND CAPACITORS

// EXAMPLE : 10.1 :
// Page number 647-648
clear ; clc ; close ; // Clear the work space and console

// Given data
G2_per = 70.0              // G2 is fed at 70% distance from A in section AB(%)
X_T = 10.0                 // Transformer reactance(%)
zone_1_per = 80.0          // Setting for first zone(%)
zone_2_per = 50.0          // Setting for second zone(%)
CT_ratio = 400.0/5         // CT ratio
PT_ratio = 166000.0/110    // PT ratio
Z_AB = complex(20.0,60.0)  // Section AB impedance(ohm)
Z_BC = complex(10.0,25.0)  // Section BC impedance(ohm)
MVA = 10.0                 // Transformer rating(MVA)
kV_hv = 166.0              // HV side voltage(kV)
kV_lv = 33.0               // LV side voltage(kV)

// Calculations
// Case(i) Without infeed
Z_sec_1 = zone_1_per/100*Z_AB*CT_ratio/PT_ratio                 // First zone setting(ohm)
Z_BC_hv = Z_BC*(kV_hv/kV_lv)**2                                 // Z_BC on 166 kV base(ohm)
Z_T = %i*10*X_T*kV_hv**2/(MVA*1000)                             // Transformer impedance(ohm)
Z_sec_2 = (Z_AB+zone_2_per/100*Z_BC_hv+Z_T)*CT_ratio/PT_ratio   // Second zone setting(ohm)
Z_sec_3 = (Z_AB+Z_BC_hv+Z_T)*CT_ratio/PT_ratio                  // Third zone setting(ohm)
// Case(ii) With infeed
I_AB = 2.0                                                                                           // Current ratio
Z_zone_1 = (G2_per/100*Z_AB)+I_AB*(zone_1_per-G2_per)/100*Z_AB                                       // First zone impedance(ohm)
Z_1 = Z_zone_1*CT_ratio/PT_ratio                                                                     // First zone setting(ohm)
Z_zone_2 = (G2_per/100*Z_AB)+I_AB*(((zone_1_per-zone_2_per)/100*Z_AB)+(zone_2_per/100*Z_BC_hv)+Z_T)  // Second zone impedance(ohm)
Z_2 = Z_zone_2*CT_ratio/PT_ratio                                                                     // Second zone setting(ohm)
under_reach = Z_zone_2-(Z_AB+zone_2_per/100*Z_BC_hv+Z_T)                                             // Under-reach due to infeed(ohm)
Z_zone_3 = (G2_per/100*Z_AB)+I_AB*(((zone_1_per-zone_2_per)/100*Z_AB)+Z_BC_hv+Z_T)                   // Third zone impedance(ohm)
Z_3 = Z_zone_3*CT_ratio/PT_ratio                                                                     // Third zone setting(ohm)

// Results
disp("PART III - EXAMPLE : 10.1 : SOLUTION :-")
printf("\nCase(i)  Without infeed:")
printf("\n         First zone relay setting = (%.2f + %.2fj) ohm", real(Z_sec_1),imag(Z_sec_1))
printf("\n         Second zone relay setting = (%.1f + %.1fj) ohm", real(Z_sec_2),imag(Z_sec_2))
printf("\n         Third zone relay setting = (%.1f + %.1fj) ohm", real(Z_sec_3),imag(Z_sec_3))
printf("\nCase(ii) With infeed:")
printf("\n         First zone relay setting = (%.3f + %.2fj) ohm", real(Z_1),imag(Z_1))
printf("\n         Second zone relay setting = (%.1f + %.1fj) ohm", real(Z_2),imag(Z_2))
printf("\n         Third zone relay setting = (%.1f + %.fj) ohm\n", real(Z_3),imag(Z_3))
printf("\nNOTE: ERROR: Calculation mistake in Z_BC. Hence, changes in the obtained answer from that of textbook")
