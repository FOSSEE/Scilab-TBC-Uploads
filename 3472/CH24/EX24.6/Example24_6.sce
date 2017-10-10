// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 17: ELECTRIC POWER SUPPLY SYSTEMS

// EXAMPLE : 17.6 :
// Page number 427-428
clear ; clc ; close ; // Clear the work space and console

// Given data
L = 250.0                 // Cable length(m)
P = 80.0*10**3            // Load(W)
V = 400.0                 // Voltage(V)
PF = 0.8                  // Lagging power factor
time = 4000.0             // Time of operation(hours/annum)
a = poly(0,'a')           // Area of each conductor(Sq.cm)
cost_instal = 15.0*a+25   // Cost of cable including installation(Rs/m)
interest_per = 0.1        // Interest & depreciation
cost_waste_per = 0.1      // Cost of energy wasted(Rs/unit)
r = 0.173                 // Resistance per km of 1 cm^2(ohm)

// Calculations
I = P/(3**0.5*V*PF)                                     // Line current(A)
energy_waste = 3.0*I**2*r/a*L*10**-3*time*10**-3        // Energy wasted per annum(kWh)
cost_energy_waste = cost_waste_per*energy_waste         // Annual cost of energy wasted as losses(Rs)
capitaL_cost_cable = cost_instal*L                      // Capital cost of cable(Rs)
annual_cost_cable = capitaL_cost_cable*cost_waste_per   // Annual cost on cable(Rs)
area = (1081.25/375)**0.5                               // Area = a(Sq.cm). Simplified and taken final answer

// Results
disp("PART II - EXAMPLE : 17.6 : SOLUTION :-")
printf("\nEconomical cross-section of a 3-core distributor cable, a = %.1f cm^2", area)
