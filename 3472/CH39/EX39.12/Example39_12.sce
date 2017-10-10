// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.12 :
// Page number 687-688
clear ; clc ; close ; // Clear the work space and console

// Given data
speed_per = 15.0   // Motor speed increased by(%)

// Calculations
N_2 = (100+speed_per)/100       // New speed N_2(rpm)
phi_2 = 1/N_2*100               // Flux_2 in terms of full load flux
I_sc1 = 0.75                    // New series field current in terms of I_a1
I_a2 = N_2                      // Armature current in terms of I_a1
R_d = I_sc1/(I_a2-I_sc1)*100    // Diverter resistance in terms of series field resistance(%)

// Results
disp("PART IV - EXAMPLE : 1.12 : SOLUTION :-")
printf("\nDiverter resistance, R_d = %.1f percent of field resistance", R_d)
