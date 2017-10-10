// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.11 :
// Page number 784
clear ; clc ; close ; // Clear the work space and console

// Given data
W = 400.0       // Weight of train(tonne)
G = 100.0/75    // Gradient
alpha = 1.6     // Acceleration(km phps)
r = 66.75       // Train resistance(N/tonne)
I = 10.0        // Rotational inertia(%)
V = 48.0        // Speed(kmph)
n = 0.7         // Overall efficiency of equipment

// Calculations
W_e = W*(100+I)/100                  // Accelerating weight of train(tonne)
F_t = 277.8*W_e*alpha+W*r+98.1*W*G   // Tractive effort(N)
t = V/alpha                          // Time(sec)
energy_a = F_t*V*t/(2*3600**2)       // Energy usefully employed(kWh)
G_r = 98.1*G+r                       // Force(N)
work_tonne_km = G_r*1000             // Work done per tonne per km(Nw-m)
energy_b = work_tonne_km/(n*3600)    // Energy consumption(Wh per tonne-km)

// Results
disp("PART IV - EXAMPLE : 5.11 : SOLUTION :-")
printf("\nCase(a): Energy usefully employed in attaining speed = %.2f kWh", energy_a)
printf("\nCase(b): Specific energy consumption at steady state speed = %.1f Wh per tonne-km", energy_b)
