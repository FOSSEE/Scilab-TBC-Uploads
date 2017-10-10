// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 4: ILLUMINATION

// EXAMPLE : 4.8 :
// Page number 758
clear ; clc ; close ; // Clear the work space and console

// Given data
b = 15.25     // Breadth of workshop(m)
l = 36.6      // Length of workshop(m)
no = 20.0     // Number of lamps
P = 500.0     // Power of each lamp(W)
n = 15.0      // Luminous efficiency of each lamp(lumens/watt)
df = 0.7      // Depreciation factor
cou = 0.5     // Co-efficient of utilization

// Calculations
lumen_lamp = no*P*n                // Lamp lumens
lumen_plane = lumen_lamp*df*cou    // Lumens on the working plane
I = lumen_plane/(l*b)              // Illumination(lm/sq.m)

// Results
disp("PART IV - EXAMPLE : 4.8 : SOLUTION :-")
printf("\nIllumination on the working plane = %.1f lm per sq.m\n", I)
printf("\nNOTE: ERROR: The breadth should be 15.25m but mentioned as 5.25m in textbook statement")
