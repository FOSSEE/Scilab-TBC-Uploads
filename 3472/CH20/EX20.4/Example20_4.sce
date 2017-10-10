// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 13: WAVE PROPAGATION ON TRANSMISSION LINES

// EXAMPLE : 13.4 :
// Page number 366
clear ; clc ; close ; // Clear the work space and console

// Given data
R_1 = 60.0     // Surge impedance of underground cable(ohm)
R_2 = 400.0    // Surge impedance of overhead line(ohm)
e = 100.0      // Maximum value of surge(kV)

// Calculations
i = e*1000/R_1                // Current(A)
k = (R_2-R_1)/(R_2+R_1)
e_ref = k*e                   // Reflected voltage(kV)
e_trans = e+e_ref             // Transmitted voltage(kV)
e_trans_alt = (1+k)*e         // Transmitted voltage(kV). Alternative method
i_ref = -k*i                  // Reflected current(A)
i_trans = e_trans*1000/R_2    // Transmitted current(A)
i_trans_alt = (1-k)*i         // Transmitted current(A). Alternative method

// Results
disp("PART II - EXAMPLE : 13.4 : SOLUTION :-")
printf("\nReflected voltage at the junction = %.f kV", e_ref)
printf("\nTransmitted voltage at the junction = %.f kV", e_trans)
printf("\nReflected current at the junction = %.f A", i_ref)
printf("\nTransmitted current at the junction = %.f A\n", i_trans)
printf("\nNOTE: ERROR: Calculation mistake in textbook in finding Reflected current")
