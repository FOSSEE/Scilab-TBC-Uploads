// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 8: PROTECTION OF ALTERNATORS AND AC MOTORS

// EXAMPLE : 8.4 :
// Page number 625
clear ; clc ; close ; // Clear the work space and console

// Given data
I_min = 0.15          // Minimum pick up current of relay(A)
slope = 12.0          // Slope(%)
CT_ratio = 400.0/5    // CT ratio
I_1 = 360.0           // Current(A)
I_2 = 300.0           // Current(A)

// Calculations
i_1 = I_1/CT_ratio                         // Current(A)
i_2 = I_2/CT_ratio                         // Current(A)
percentage = (i_1-i_2)/((i_1+i_2)/2)*100   // Percentage(%)

// Results
disp("PART III - EXAMPLE : 8.4 : SOLUTION :-")
if(percentage>slope) then
    printf("\nRelay would trip the circuit breaker, since the point lie on +ve torque regime")
else then
    printf("\nRelay would not trip the circuit breaker, since the point do not lie on +ve torque regime")
end
