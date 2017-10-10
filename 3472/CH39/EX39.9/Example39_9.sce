// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.9 :
// Page number 686-687
clear ; clc ; close ; // Clear the work space and console

// Given data
I_f1 = 25.0    // Current without diverter(A)
N_1 = 500.0    // Speed of dc series motor without diverter(rpm)

// Calculations
I_a2 = ((3.0/2)**0.5*I_f1**2*3/2)**0.5   // Field current with diverter(A)
N_2 = I_f1*N_1*3/(2*I_a2)                // Speed with diverter(rpm)

// Results
disp("PART IV - EXAMPLE : 1.9 : SOLUTION :-")
printf("\nSpeed when field winding is shunted by a diverter, N_2 = %.f rpm", N_2)
printf("\nCurrent when field winding is shunted by a diverter, I_a2 = %.1f A", I_a2)
