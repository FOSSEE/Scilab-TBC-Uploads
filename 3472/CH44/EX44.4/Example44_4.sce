// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 6: MOTORS FOR ELECTRIC TRACTION

// EXAMPLE : 6.4 :
// Page number 791
clear ; clc ; close ; // Clear the work space and console

// Given data
F_t = 33800.0   // Tractive effort(N)
V = 48.3        // Velocity(kmph)
T = 53400.0     // Tractive effort(N)

// Calculations
HP = F_t*V*1000/(60*60*746)    // HP on level track(hp)
HP_i = HP*(T/F_t)**0.5         // hp delivered by locomotive for dc series motor(hp)
HP_ii = HP*T/F_t               // hp delivered by locomotive for induction motor(hp)

// Results
disp("PART IV - EXAMPLE : 6.4 : SOLUTION :-")
printf("\nhp delivered by the locomotive when dc series motor is used = %.f HP", HP_i)
printf("\nhp delivered by the locomotive when induction motor is used = %.f HP", HP_ii)
