// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 7: CONTROL OF MOTORS

// EXAMPLE : 7.2 :
// Page number 798
clear ; clc ; close ; // Clear the work space and console

// Given data
W = 175.0        // Weight of multiple unit train(tonnes)
no = 6.0         // Number of motors
F_t = 69000.0    // Total tractive effort(N)
V = 600.0        // Line voltage(V)
I = 200.0        // Average current(A)
V_m = 38.6       // Speed(kmph)
R = 0.15         // Resistance of each motor(ohm)

// Calculations
alpha = F_t/(277.8*W)                             // Acceleration(km phps)
T = V_m/alpha                                     // Time for acceleration(sec)
t_s = (V-2*I*R)*T/(2*(V-I*R))                     // Duration of starting period(sec)
t_p = T-t_s                                       // (sec)
energy_total_series = no/2*V*I*t_s                // Total energy supplied in series position(watt-sec)
energy_total_parallel = no*V*I*t_p                // Total energy supplied in parallel position(watt-sec)
total_energy = (energy_total_series+energy_total_parallel)/(1000*3600)         // Energy supplied during starting period(kWh)
energy_waste_series = (no/2)/2*(V-2*I*R)*I*t_s    // Energy wasted in starting resistance in series position(watt-sec)
energy_waste_parallel = no*(V/2)/2*I*t_p          // Energy wasted in starting resistance in parallel position(watt-sec)
total_energy_waste = (energy_waste_series+energy_waste_parallel)/(1000*3600)   // Total energy wasted in starting resistance(kWh)
energy_lost = (no*I**2*R*T)/(1000*3600)           // Energy lost in motor resistance(kWh)
useful_energy = T*F_t*V_m/(2*3600**2)             // Useful energy supplied to train(kWh)

// Results
disp("PART IV - EXAMPLE : 7.2 : SOLUTION :-")
printf("\nEnergy supplied during the starting period = %.2f kWh", total_energy)
printf("\nEnergy lost in the starting resistance = %.1f kWh", total_energy_waste)
printf("\nUseful energy supplied to the train = %.1f kWh", useful_energy)
