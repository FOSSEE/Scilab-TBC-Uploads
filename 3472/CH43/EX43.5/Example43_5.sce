// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.5 :
// Page number 781-782
clear ; clc ; close ; // Clear the work space and console

// Given data
r = 1.0    // Tractive resistance(N/tonne)

// Calculations
tractive_res_i = 0.278*r     // Tractive resistance(N/tonne) = Energy consumption(Wh/tonne-km)
beta = 1/277.8               // Tractive resistance(N/tonne) = Retardation(km kmps/tonne)
energy = 98.1*1000/3600      // 1% gradient = energy(Wh per tonne km)

// Results
disp("PART IV - EXAMPLE : 5.5 : SOLUTION :-")
printf("\nCase(i)  : Tractive resistance of 1 N per tonne = %.3f Wh per tonne-km", tractive_res_i)
printf("\nCase(ii) : Tractive resistance of 1 N per tonne = %.5f km phps per tonne", beta)
printf("\nCase(iii): 1 percent gradient = %.2f Wh per tonne km\n", energy)
printf("\nNOTE: Slight change in the obtained answer from that of textbook is due to more precision here")
