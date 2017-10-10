// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 17: ELECTRIC POWER SUPPLY SYSTEMS

// EXAMPLE : 17.5 :
// Page number 425
clear ; clc ; close ; // Clear the work space and console

// Given data
L = 60.0            // Line length(km)
P = 5.0             // Load(MW)
PF = 0.8            // Lagging power factor
V = 33.0*10**3      // Voltage(V)
n = 0.85            // Transmission efficiency
rho = 1.73*10**-8   // Specific resistance of copper(ohm-mt)
density = 8900.0    // Density(kg/mt^3)

// Calculations
I = P*10**6/(3**0.5*V*PF)               // Line current(A)
line_loss = (1-n)*P*1000/n              // Line loss(kW)
line_loss_phase = line_loss/3.0         // Line loss/phase(kW)
R = line_loss_phase*1000/I**2           // Resistance/phase(ohm)
a = rho*L*1000/R                        // Area of cross section of conductor(m^2)
volume = 3.0*a*L*1000                   // Volume of copper(m^3)
W_cu = volume*density                   // Weight of copper in 3-phase system(kg)
I_1 = P*10**6/V                         // Current in single phase system(A)
R_1 = line_loss*1000/(2*I_1**2)         // Resistance in single phase system(ohm)
a_1 = rho*L*1000/R_1                    // Area of cross section of conductor in single phase system(m^2)
volume_1 = 2.0*a_1*L*1000               // Volume of copper(m^3)
W_cu_1 = volume_1*density               // Weight of copper in 1-phase system(kg)
reduction_cu = (W_cu-W_cu_1)/W_cu*100   // Reduction in copper(%)

// Results
disp("PART II - EXAMPLE : 17.5 : SOLUTION :-")
printf("\nWeight of copper required for 3-phase 2-wire system = %.2e kg", W_cu)
printf("\nReduction of weight of copper possible = %.1f percent \n", reduction_cu)
printf("\nNOTE: ERROR: Calculation mistakes in the textbook solution")
