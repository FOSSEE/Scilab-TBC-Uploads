// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 9: ELECTRIC TRACTION SYSTEMS AND POWER SUPPLY

// EXAMPLE : 9.2 :
// Page number 820
clear ; clc ; close ; // Clear the work space and console

// Given data
D = 50.0    // Distance between poles(m)
w = 0.5     // Weight of trolley wire per metre(kg)
T = 520.0   // Maximum tension(kg)

// Calculations
l = D/2                              // Half distance b/w poles(m)
d = w*l**2/(2*T)                     // Sag(m)
wire_length = 2*(l+(2*d**2/(3*l)))   // Length of wire required(m)

// Results
disp("PART IV - EXAMPLE : 9.2 : SOLUTION :-")
printf("\nMaximum sag, d = %.4f metres", d)
printf("\nLength of wire required = %.f metres", wire_length)
