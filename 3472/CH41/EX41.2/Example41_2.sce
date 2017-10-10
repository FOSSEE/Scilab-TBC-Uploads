// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 3: ELECTROLYTIC AND ELECTRO-METALLURGICAL PROCESSES

// EXAMPLE : 3.2 :
// Page number 748
clear ; clc ; close ; // Clear the work space and console

// Given data
no_cells = 600.0    // Number of cells employed for copper refining
I = 4000.0          // Current(A)
V = 0.3             // Voltage per cell(V)
hour = 90.0         // Time of plant operation(hours)
ece_cu = 1.1844     // Electro-chemical equivalent of copper(kg/1000 Ah)

// Calculations
Ah_week  = I*hour                           // Ah per week per cell
Ah_year = Ah_week*52                        // Ah per year per cell
Wt = no_cells*ece_cu*Ah_year/(1000*10**3)   // Weight of copper refined per year(tonnes)
energy = V*I*no_cells*hour*52/1000          // Energy consumed(kWh)
consumption = energy/Wt                     // Consumption(kWh/tonne)

// Results
disp("PART IV - EXAMPLE : 3.2 : SOLUTION :-")
printf("\nAnnual output of refined copper = %.f tonnes", Wt)
printf("\nEnergy consumption = %.1f kWh/tonne\n", consumption)
printf("\nNOTE: ERROR: Substitution & calculation mistake in the textbook solution")
