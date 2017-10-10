// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 17: ELECTRIC POWER SUPPLY SYSTEMS

// EXAMPLE : 17.7 :
// Page number 428
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 110.0*10**3               // Voltage(V)
l_1 = 24.0*10**6              // Load(MW)
t_1 = 6.0                     // Time(hours)
l_2 = 8.0*10**6               // Load(MW)
t_2 = 6.0                     // Time(hours)
l_3 = 4.0*10**6               // Load(MW)
t_3 = 12.0                    // Time(hours)
PF = 0.8                      // Lagging power factor
a = poly(0,'a')               // Cross-section of each conductor(Sq.cm)
cost_line = 12000.0+8000*a    // Cost of line including erection(Rs/km)
R = 0.19/a                    // Resistance per km of each conductor(ohm)
cost_energy = 8.0/100         // Energy cost(Rs/unit)
interest_per = 0.1            // Interest & depreciation. Assumption

// Calculations
annual_charge = interest_per*cost_line     // Total annual charge(Rs)
I_1 = l_1/(3**0.5*V*PF)                    // Line current for load 1(A)
I_2 = l_2/(3**0.5*V*PF)                    // Line current for load 2(A)
I_3 = l_3/(3**0.5*V*PF)                    // Line current for load 3(A)
I_2_t = I_1**2*t_1+I_2**2*t_2+I_3**2*t_3   // I^2*t
annual_energy = 3.0*R*365/1000*I_2_t       // Annual energy consumption on account of losses(kWh)
cost_waste = annual_energy*cost_energy     // Cost of energy wasted per annum(Rs)
area = (2888.62809917355/800.0)**0.5       // Economical cross-section = a(Sq.cm). Simplified and taken final answer

// Results
disp("PART II - EXAMPLE : 17.7 : SOLUTION :-")
printf("\nMost economical cross-section, a = %.2f cm^2", area)
