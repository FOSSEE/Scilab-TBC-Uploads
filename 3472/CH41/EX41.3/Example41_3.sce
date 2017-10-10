// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 3: ELECTROLYTIC AND ELECTRO-METALLURGICAL PROCESSES

// EXAMPLE : 3.3 :
// Page number 748
clear ; clc ; close ; // Clear the work space and console

// Given data
hour = 24.0         // Time(hour)
I = 3500.0          // Average current(A)
n = 0.9             // Current efficiency
valency = 3.0       // Aluminium valency
w = 27.0            // Atomic weight of aluminium
ece_Ag = 107.98     // Electro-chemical equivalent of silver
Wt_dep = 0.00111    // Silver deposition by one coulomb(gm)

// Calculations
chemical_eq_Al = w/valency                    // Chemical equivalent of aluminium
eme_Al  = Wt_dep/ece_Ag*chemical_eq_Al        // Electro-chemical equivalent of aluminium(gm/coulomb)
Wt_Al_liberated = I*hour*3600*n*eme_Al/1000   // Weight of aluminium liberated(Kg)

// Results
disp("PART IV - EXAMPLE : 3.3 : SOLUTION :-")
printf("\nWeight of aluminium produced from aluminium oxide = %.1f kg", Wt_Al_liberated)
