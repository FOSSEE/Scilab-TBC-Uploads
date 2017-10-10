// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.10 :
// Page number 215-216
clear ; clc ; close ; // Clear the work space and console

// Given data
e_1 = 3.6           // Inner relative permittivity
e_2 = 2.5           // Outer relative permittivity
d = 1.0             // Conductor diameter(cm)
d_1 = 3.0           // Sheath diameter(cm)
D = 5.0             // Overall diameter(cm)
V_l = 66.0          // Line Voltage(kV)

// Calculations
V = V_l/3**0.5*2**0.5                                // Peak voltage on core(kV)
g1_max = 2*V/(d*(log(d_1/d)+e_1/e_2*log(D/d_1)))     // Maximum stress in first dielectric(kV/km)
g_max = 2*V/(d_1*(e_2/e_1*log(d_1/d)+log(D/d_1)))    // Maximum stress in second dielectric(kV/km)

// Results
disp("PART II - EXAMPLE : 7.10 : SOLUTION :-")
printf("\nMaximum stress in first dielectric, g_1_max = %.2f kV/cm", g1_max)
printf("\nMaximum stress in second dielectric, g_max = %.2f kV/cm", g_max)
