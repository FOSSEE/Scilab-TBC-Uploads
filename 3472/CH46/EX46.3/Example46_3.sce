// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 8: BRAKING

// EXAMPLE : 8.3 :
// Page number 810
clear ; clc ; close ; // Clear the work space and console

// Given data
W = 400.0       // Weight of train(tonne)
G = 100.0/70    // Gradient(%)
t = 120.0       // Time(sec)
V_1 = 80.0      // Speed(km/hr)
V_2 = 50.0      // Speed(km/hr)
r_kg = 5.0      // Tractive resistance(kg/tonne)
I = 7.5         // Rotational inertia(%)
n = 0.75        // Overall efficiency

// Calculations
W_e = W*(100+I)/100                                      // Accelerating weight of train(tonne)
r = r_kg*9.81                                            // Tractive resistance(N-m/tonne)
energy_recuperation = 0.01072*W_e*(V_1**2-V_2**2)/1000   // Energy available for recuperation(kWh)
F_t = W*(r-98.1*G)                                       // Tractive effort during retardation(N)
distance = (V_1+V_2)*1000*t/(2*3600)                     // Distance travelled by train during retardation period(m)
energy_train = abs(F_t)*distance/(3600*1000)             // Energy available during train movement(kWh)
net_energy = n*(energy_recuperation+energy_train)        // Net energy returned to supply system(kWh)

// Results
disp("PART IV - EXAMPLE : 8.3 : SOLUTION :-")
printf("\nEnergy returned to lines = %.2f kWh\n", net_energy)
printf("\nNOTE: ERROR: Calculation mistakes & more approximation in textbook solution")
