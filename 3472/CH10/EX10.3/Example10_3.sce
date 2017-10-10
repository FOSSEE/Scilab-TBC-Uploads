// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.3 :
// Page number 129
clear ; clc ; close ; // Clear the work space and console

// Given data
I = 200.0               // Line current(A)
PF_r = 0.8              // Receiving end lagging power factor
R = 0.6                 // Total resistance of the line(ohm)
X = 1.0                 // Total inductive resistance of the line(ohm)
n  = 0.93               // Efficiency(%)

// Calculations
V_r = 3*I**2*R/((3*I*PF_r/n)-3*I*PF_r)   // Receiving end phase voltage(V)
sin_phi_r = (1-PF_r**2)**0.5             // Sinφ_R
V_s = V_r+I*R*PF_r+I*X*sin_phi_r         // Sending end voltage(V)
V_s_ll = 3**0.5*V_s                      // Sending end line voltage(V)

// Results
disp("PART II - EXAMPLE : 3.3 : SOLUTION :-")
printf("\nSending end voltage, V_s(line-line)  = %.2f V", V_s_ll)
