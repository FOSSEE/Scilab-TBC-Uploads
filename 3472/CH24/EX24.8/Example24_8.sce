// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 17: ELECTRIC POWER SUPPLY SYSTEMS

// EXAMPLE : 17.8 :
// Page number 428-429
clear ; clc ; close ; // Clear the work space and console

// Given data
cost_km_cu = 2800.0         // Cost per km for each copper conductor of sq.cm(Rs)
LF_I = 80.0/100             // Load factor of load current
LF_loss = 65.0/100          // Load factor of losses
interest_per = 10.0/100     // Rate of interest and depreciation
cost_energy = 5.0/100       // Cost of energy(Rs/kWh)
rho = 1.78*10**-8           // Resistivity(ohm-m)

// Calculations
P_2 = cost_km_cu*interest_per                   // Cost in terms of L(Rs)
time_year = 365.0*24                            // Total hours in a year
P_3 = cost_energy*rho*10**4*time_year*LF_loss   // Cost in terms of I^2 & L(Rs)
delta = (P_2/P_3)**0.5                          // Economical current density for the transmission line(A/sq.cm)
    
// Results
disp("PART II - EXAMPLE : 17.8 : SOLUTION :-")
printf("\nMost economical current density for the transmission line, δ = %.f A/sq.cm", delta)
