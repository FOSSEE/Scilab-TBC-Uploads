// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.8 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
l = 3 ; // underground cable length in mi
f = 60 ; // frequency in hertz

// CALCULATIONS
// For case (a)
R_dc = 0.00539 ; // dc resistance of cable in Ω/1000ft , From table 5.5 
R_dc1 = (R_dc/1000) * 5280 * 3 ; // Total dc resistance in Ω . [1 mi = 5280 feet]

// For case (b)
s_e = 1.233 ; // skin effect coefficient
R_eff = s_e * R_dc1 ; // Effective resistance in Ω
percentage  = ( (R_eff - R_dc1)/(R_dc1) ) * 100 ; // skin effect on effective resistance in %

// DISPLAY RESULTS
disp("EXAMPLE : 5.8 : SOLUTION :-") ; 
printf("\n (a) Total dc resistance of the conductor , R_dc = %.4f Ω \n",R_dc1) ;
printf("\n (b) Effective resistance at 60 hz , R_eff = %.4f Ω \n",R_eff) ;
printf("\n     Skin effect on the Effective resistance in percent at 60 hz , R_eff = %.1f percent greater than for direct current\n",percentage) ;
printf("\n (c) Percentage of reduction in cable ampacity in part (b) = %.1f percent \n",percentage) ;
