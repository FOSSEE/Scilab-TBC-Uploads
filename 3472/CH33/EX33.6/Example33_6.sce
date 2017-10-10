// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 7: PROTECTIVE RELAYS

// EXAMPLE : 7.6 :
// Page number 611
clear ; clc ; close ; // Clear the work space and console

// Given data
I_min = 0.1          // Relay minimum pick up current(A)
slope = 10.0         // Slope characteristic(%)
CT_ratio = 400.0/5   // CT ratio
I_1 = 320.0          // Current(A)
I_2 = 304.0          // Current(A)

// Calculations
I_op_coil = (I_1-I_2)/CT_ratio           // Current in operating coil(A)
I_re_coil = 1.0*(I_1+I_2)/(2*CT_ratio)   // Current in restraining coil(A)
I_re_coil_slope = I_re_coil*slope/100    // Current in restraining coil with slope(A)

// Results
disp("PART III - EXAMPLE : 7.6 : SOLUTION :-")
if(I_op_coil<I_re_coil_slope) then
    printf("\nRelay will not trip the circuit breaker")
else then
    print("\nRelay will trip the circuit breaker")
end
