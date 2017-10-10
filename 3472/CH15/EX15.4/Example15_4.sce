// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 8: CORONA

// EXAMPLE : 8.4 :
// Page number 228-229
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 110.0            // Operating line voltage(kV)
f = 50.0             // Frequency(Hz)
l = 175.0            // Line length(km)
d = 1.0              // Diameter of conductor(cm)
D = 300.0            // Distance b/w conductor(cm)
t = 26.0             // Temperature(°C)
b = 74.0             // Barometric pressure(cm)
m = 0.85             // Irregularity factor
m_v_local = 0.72     // Roughness factor for local corona
m_v_gen = 0.82       // Roughness factor for general corona

// Calculations
delta = 3.92*b/(273.0+t)                                                  // Air density factor
r = d/2.0                                                                 // Radius of conductor(cm)
E_0 = 21.1*m*delta*r*log(D/r)                                             // Critical disruptive voltage(kV) rms
E_v_local = 21.1*m_v_local*delta*r*(1+(0.3/(delta*r)**0.5))*log(D/r)      // Critical disruptive voltage for local corona(kV) rms
E_v_gen = 21.1*m_v_gen*delta*r*(1+(0.3/(delta*r)**0.5))*log(D/r)          // Critical disruptive voltage for general corona(kV) rms
E = V/3**0.5                                                              // Phase voltage(kV)
// Case(i)
P_c_i = 244.0*10**-5*(f+25)/delta*(r/D)**0.5*(E-E_0)**2                   // Peek"s formula for fair weather condition(kW/km/phase)
P_c_i_total = P_c_i*l*3                                                   // Total power loss(kW)
// Case(ii)
P_c_ii = 244.0*10**-5*(f+25)/delta*(r/D)**0.5*(E-0.8*E_0)**2              // Peek"s formula for stormy condition(kW/km/phase)
P_c_ii_total = P_c_ii*l*3                                                 // Total power loss(kW)
// Case(iii)
F_iii = 0.0713                                                            // From text depending on E/E_0
P_c_iii = 21.0*10**-6*f*E**2*F_iii/(log10(D/r))**2                        // Peterson"s formula for fair condition(kW/km/phase)
P_c_iii_total = P_c_iii*l*3                                               // Total power loss(kW)
// Case(iv)
F_iv = 0.3945                                                             // From text depending on E/E_0
P_c_iv = 21.0*10**-6*f*E**2*F_iv/(log10(D/r))**2                          // Peterson"s formula for stormy condition(kW/km/phase)
P_c_iv_total = P_c_iv*l*3                                                 // Total power loss(kW)
    
// Results
disp("PART II - EXAMPLE : 8.4 : SOLUTION :-")
printf("\nCase(i)  : Power loss due to corona using Peek formula for fair weather condition, P_c  = %.3f kW/km/phase", P_c_i)
printf("\n           Total corona loss in fair weather condition using Peek formula = %.1f kW", P_c_i_total)
printf("\nCase(ii) : Power loss due to corona using Peek formula for stormy weather condition, P_c  = %.2f kW/km/phase", P_c_ii)
printf("\n           Total corona loss in stormy condition using Peek formula = %.f kW", P_c_ii_total)
printf("\nCase(iii): Power loss due to corona using Peterson formula for fair weather condition, P_c  = %.4f kW/km/phase", P_c_iii)
printf("\n           Total corona loss in fair condition using Peterson formula = %.2f kW",P_c_iii_total)
printf("\nCase(iii): Power loss due to corona using Peterson formula for fair weather condition, P_c  = %.4f kW/km/phase", P_c_iv)
printf("\n           Total corona loss in stormy condition using Peterson formula = %.1f kW \n",P_c_iv_total)
printf("\nNOTE: ERROR: Calculation mistake in the final answer in textbook")
