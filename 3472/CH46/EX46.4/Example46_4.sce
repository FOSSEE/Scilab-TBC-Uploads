// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 8: BRAKING

// EXAMPLE : 8.4 :
// Page number 810
clear ; clc ; close ; // Clear the work space and console

// Given data
W = 355.0        // Weight of train(tonne)
V_1 = 80.5       // Speed(km/hr)
V_2 = 48.3       // Speed(km/hr)
D = 1.525        // Distance(km)
G = 100.0/90     // Gradient(%)
I = 10.0         // Rotational inertia(%)
r = 53.0         // Tractive resistance(N/tonne)
n = 0.8          // Overall efficiency

// Calculations
beta = (V_1**2-V_2**2)/(2*D*3600)   // Braking retardation(km phps)
W_e = W*(100+I)/100                 // Accelerating weight of train(tonne)
F_t = 277.8*W_e*beta+98.1*W*G-W*r   // Tractive effort(N)
work_done = F_t*D*1000              // Work done by this effort(N-m)
energy = work_done*n/(1000*3600)    // Energy returned to line(kWh)

// Results
disp("PART IV - EXAMPLE : 8.4 : SOLUTION :-")
printf("\nEnergy returned to the line = %.1f kWh", energy)
