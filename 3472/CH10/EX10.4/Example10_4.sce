// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.4 :
// Page number 129
clear ; clc ; close ; // Clear the work space and console

// Given data
P = 15.0*10**6            // Load delivered at receiving end(W)
PF_r = 0.85               // Receiving end lagging power factor
r = 0.905                 // Resistance of each conductor(ohm/km)
V_r = 132.0*10**3         // Receiving end voltage(V)
loss_per = 7.5/100        // Loss

// Calculations
loss = loss_per*P             // Losses in line(W)
I = P/(3**0.5*V_r*PF_r)       // Line current(A)
l = loss/(3*I**2*r)           // Length of line(km)

// Results
disp("PART II - EXAMPLE : 3.4 : SOLUTION :-")
printf("\nDistance over which load is delivered, l = %.2f km", l)
