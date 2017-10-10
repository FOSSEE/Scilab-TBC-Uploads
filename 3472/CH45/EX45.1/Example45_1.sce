// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 7: CONTROL OF MOTORS

// EXAMPLE : 7.1 :
// Page number 798
clear ; clc ; close ; // Clear the work space and console

// Given data
no = 2.0         // Number of motors
V_m = 48.0       // Uniform speed(kmph)
t = 30.0         // Time(sec)
F_t_m = 13350.0  // Average tractive effort per motor(N)

// Calculations
F_t = no*F_t_m                  // Average tractive effort(N)
energy = t*F_t*V_m/(2*3600**2)  // Useful energy for acceleration(kWh)
energy_loss = energy/no         // Approximate loss of energy in starting rheostats(kWh)

// Results
disp("PART IV - EXAMPLE : 7.1 : SOLUTION :-")
printf("\nApproximate loss of energy in starting rheostats = %.3f kWh", energy_loss)
