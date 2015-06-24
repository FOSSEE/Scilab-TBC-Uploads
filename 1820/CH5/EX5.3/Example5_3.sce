// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.3 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
D = 1.235 ; // Inside diameter of sheath in inch
d = 0.575 ; // Conductor diameter in inch
kv = 115 ; // Voltage in kV
l = 6000 ; // Length of cable in feet
r_si = 2000 ; // specific insulation resistance is 2000 MΩ/1000ft . From Table 5.2

// CALCULATIONS
// For case (a)
r_si0 = r_si * l/1000 ;
R_i = r_si0 * log10 (D/d) ; // Total Insulation resistance in MΩ

// For case (b)
P = kv^2/R_i ; // Power loss due to leakage current in W

// DISPLAY RESULTS
disp("EXAMPLE : 5.3 : SOLUTION :-") ;
printf("\n (a) Total insulation resistance at 60 degree F , R_i= %.2f MΩ \n",R_i) ;
printf("\n (b) Power loss due to leakage current , V^2/R_i = %.4f W \n",P) ;

printf("\n NOTE : ERROR : Mistake in textbook case (a) \n") ;
