// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 8: CORONA

// EXAMPLE : 8.5 :
// Page number 229
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 132.0            // Operating line voltage(kV)
dia = 1.956          // Diameter of conductor(cm)
v_c = 210.0          // Disrputive voltage(kV) 
g_0 = 30.0/2**0.5    // Breakdown strength of air(kV/cm)

// Calculations
r = dia/2.0                              // Radius of conductor(cm)
V_c = v_c/3**0.5                         // Disrputive voltage/phase(kV)
m_0 = 1.0                                // Irregularity factor
delta = 1.0                              // Air density factor
d = exp(V_c/(m_0*delta*g_0*r))*r         // Spacing between conductors(cm)
    
// Results
disp("PART II - EXAMPLE : 8.5 : SOLUTION :-")
printf("\nSpacing between the conductors, d = %.f cm \n", abs(d))
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to precision")
