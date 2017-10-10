// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 5: MECHANICAL DESIGN OF OVERHEAD LINES

// EXAMPLE : 5.5 :
// Page number 199
clear ; clc ; close ; // Clear the work space and console

// Given data
w_w = 1.781          // Wind pressure on conductor(kg/m)
w_i = 1.08           // Weight of ice on conductor(kg/m)
D = 6.0              // Maximum permissible sag(m)
s = 2.0              // Factor of safety
w_c = 0.844          // Weight of conductor(kg/m)
u = 7950.0           // Ultimate strength(kg)

// Calculations
w = ((w_c+w_i)**2+w_w**2)**0.5       // Total force on conductor(kg/m)
T = u/s                              // Allowable maximum tension(kg)
l = ((D*2*T)/w)**0.5                 // Half span(m)
L = 2.0*l                            // Permissible span between two supports(m)

// Results
disp("PART II - EXAMPLE : 5.5 : SOLUTION :-")
printf("\nPermissible span between two supports = %.f metres \n", L)
printf("\nNOTE: ERROR: Horizontal wind load, w_w = 1.781 kg/m, not 1.78 kg/m as mentioned in problem statement")
