// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.9 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
L = 2.60 * 10^-3 ; // Inductance of line in H/mi
R = 0.1858 ; // Resistance of line in Ω/mi
C = 0.012 * 10^-6 ; // Capacitance in F/mi
kV = 138 ; // Transmission line voltage in kV
Z_c1 = 469.60085 // Characteristic impedance of line in Ω . Obtained from example 4.6

// CALCULATIONS
Z_c = sqrt(L/C) ; // Approximate value of surge Impedance of line in ohm
SIL =  kV^2/Z_c ; // Approximate Surge impedance loading in MW
SIL1 = kV^2/Z_c1 ; // Exact value of SIL in MW

// DISPLAY RESULTS
disp("EXAMPLE : 4.9 : SOLUTION :-") ;
printf("\n Approximate value of SIL of transmission line , SIL_app = %.3f MW\n",SIL) ;
printf("\n Exact value of SIL of transmission line , SIL_exact = %.3f MW\n",SIL1) ;
