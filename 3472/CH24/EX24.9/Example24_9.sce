// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 17: ELECTRIC POWER SUPPLY SYSTEMS

// EXAMPLE : 17.9 :
// Page number 429
clear ; clc ; close ; // Clear the work space and console

// Given data
MD = 1000.0                 // Maximum demand(kW)
energy_cons = 5.0*10**6     // Annual energy consumption(kWh)
PF = 0.85                   // Power factor
capital_cost = 80000.0      // Capital cost of cable(Rs/km)
cost_energy = 5.0/100       // Energy cost(Rs/kWh)
interest_per = 10.0/100     // Rate of interest and depreciation
r_specific = 1.72*10**-6    // Specific resistance of copper(ohm/cubic.cm)
V = 11.0                    // Voltage(kV)

// Calculations
I = MD/(3**0.5*V*PF)                                             // Line current corresponding to maximum demand(A)
hours_year = 365.0*24                                            // Total hours in a year
LF = energy_cons/(MD*hours_year)                                 // Load factor
loss_LF = 0.25*LF+0.75*LF**2                                     // Loss load factor
P_2 = capital_cost*interest_per                                  // Cost in terms of L(Rs)
P_3 = 3.0*I**2*r_specific*10**4*hours_year*loss_LF*cost_energy   // Cost in terms of I^2 & L(Rs)
a = (P_3/P_2)**0.5                                               // Most economical cross-section of conductor(sq.cm)

// Results
disp("PART II - EXAMPLE : 17.9 : SOLUTION :-")
printf("\nMost economical cross-section of the conductor, a = %.2f cm^2 \n", a)
printf("\nNOTE: ERROR: Calculation mistake in the textbook solution")
