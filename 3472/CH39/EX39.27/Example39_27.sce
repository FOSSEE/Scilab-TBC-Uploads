// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.27 :
// Page number 708
clear ; clc ; close ; // Clear the work space and console

// Given data
hp_1 = 200.0     // Motor load(hp)
t_1 = 5.0        // Time of operation(min)
hp_2 = 100.0     // Motor load(hp)
t_2 = 10.0       // Time of operation(min)
hp_3 = 0         // Motor load(hp)
t_3 = 3.0        // Time of operation(min)

// Calculations
m = hp_1/t_1                                           // Slope of uniform rise power
t_total = t_1+t_2+t_3                                  // Total time of operation(min)
ans = integrate('(m*x)**2','x', 0, t_1)                // Integarted uniform area upto 5 min
rms = ((ans+hp_2**2*t_2+hp_3**2*t_3)/t_total)**0.5     // rms horsepower

// Results
disp("PART IV - EXAMPLE : 1.27 : SOLUTION :-")
printf("\nrms horsepower = %.1f HP. Therefore, a motor of %.f H.P should be selected", rms,rms+4)
