// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 2: HEATING AND WELDING

// EXAMPLE : 2.4 :
// Page number 728
clear ; clc ; close ; // Clear the work space and console

// Given data
w_brass = 1000.0         // Weight of brass(kg)
time = 1.0               // Time(hour)
heat_sp = 0.094          // Specific heat
fusion = 40.0            // Latent heat of fusion(kcal/kg)
T_initial = 24.0         // Initial temperature(°C)
melt_point = 920.0       // Melting point of brass(°C)
n = 0.65                 // Efficiency

// Calculations
heat_req = w_brass*heat_sp*(melt_point-T_initial)     // Heat required to raise the temperature(kcal)
heat_mel = w_brass*fusion                             // Heat required for melting(kcal)
heat_total = heat_req+heat_mel                        // Total heat required(kcal)
energy = heat_total*1000*4.18/(10**3*3600*n)          // Energy input(kWh)
power = energy/time                                   // Power(kW)

// Results
disp("PART IV - EXAMPLE : 2.4 : SOLUTION :-")
printf("\nAmount of energy required to melt brass = %.f kWh", energy)
