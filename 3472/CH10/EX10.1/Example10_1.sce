// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.1 :
// Page number 127-128
clear ; clc ; close ; // Clear the work space and console

// Given data
P = 2.0*10**6           // Power delivered(W)
V_r = 33.0*10**3        // Receiving end voltage(V)
PF_r = 0.8              // Receiving end lagging power factor
R = 10.0                // Total resistance of the line(ohm)
X = 18.0                // Total inductive resistance of the line(ohm)

// Calculations
// Case(i)
I = P/(V_r*PF_r)                     // Line current(A)
sin_phi_r = (1-PF_r**2)**0.5         // Sinφ_R
V_s = V_r+I*R*PF_r+I*X*sin_phi_r     // Sending end voltage(V)
reg = (V_s-V_r)/V_r*100              // Voltage regulation(%)
// Case(ii)
PF_s  = (V_r*PF_r+I*R)/V_s           // Sending end lagging power factor
// Case(iii)
loss = I**2*R                        // Losses(W)
P_s = P+loss                         // Sending end power(W)
n = P/P_s*100                        // Transmission efficiency(%)

// Results
disp("PART II - EXAMPLE : 3.1 : SOLUTION :-")
printf("\nCase(i)  : Percentage voltage regulation = %.3f percent", reg)
printf("\nCase(ii) : Sending end power factor = %.2f (lag)", PF_s)
printf("\nCase(iii): Transmission efficiency, η = %.2f percent \n", n)
printf("\nNOTE: ERROR: pf is 0.8 and not 0.9 as mentioned in the textbook problem statement")
