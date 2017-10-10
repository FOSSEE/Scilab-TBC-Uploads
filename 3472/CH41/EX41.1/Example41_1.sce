// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 3: ELECTROLYTIC AND ELECTRO-METALLURGICAL PROCESSES

// EXAMPLE : 3.1 :
// Page number 747-748
clear ; clc ; close ; // Clear the work space and console

// Given data
l = 20.0      // Length of shaft(cm)
d = 10.0      // Diameter of shaft(cm)
thick = 1.5   // Layer of nickel(mm)
J = 195.0     // Current density(A/sq.m)
n_I = 0.92    // Current efficiency
g = 8.9       // Specific gravity of nickel

// Calculations
Wt = %pi*l*d*thick/10*g*10**-3        // Weight of nickel to be deposited(kg)
ece_nickel = 1.0954                   // Electro-chemical equivalent of nickel(kg/1000 Ah)
Q_I = Wt*1000/(ece_nickel*n_I)        // Quantity of electricity required(Ah)
time = Q_I/(%pi*l*d*10**-4*J)         // Time taken(hours)

// Results
disp("PART IV - EXAMPLE : 3.1 : SOLUTION :-")
printf("\nQuantity of electricity = %.f Ah", Q_I)
printf("\nTime taken for the process = %.f hours", time)
