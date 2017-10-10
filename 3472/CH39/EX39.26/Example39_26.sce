// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.26 :
// Page number 707-708
clear ; clc ; close ; // Clear the work space and console

// Given data
hp_1 = 100.0       // Motor load(hp)
t_1 = 10.0         // Time of operation(min)
hp_2 = 0           // Motor load(hp)
t_2 = 5.0          // Time of operation(min)
hp_3 = 60.0        // Motor load(hp)
t_3 = 8.0          // Time of operation(min)
hp_4 = 0           // Motor load(hp)
t_4 = 4.0          // Time of operation(min)

// Calculations
t_total = t_1+t_2+t_3+t_4                                               // Total time of operation(min)
rms = ((hp_1**2*t_1+hp_2**2*t_2+hp_3**2*t_3+hp_4**2*t_4)/t_total)**0.5  // rms horsepower

// Results
disp("PART IV - EXAMPLE : 1.26 : SOLUTION :-")
printf("\nRequired size of continuously rated motor = %.f H.P\n", rms)
printf("\nNOTE: ERROR: Calculation mistake in the textbook")
printf("\n      Actual value is written here instead of standard values")
