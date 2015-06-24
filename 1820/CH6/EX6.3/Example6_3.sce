// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 6 : DIRECT-CURRENT POWER TRANSMISSION

// EXAMPLE : 6.3 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
V_d0 = 125 ; // voltage rating of bridge rectifier in kV
V_dr0 = V_d0 ; // Max continuos no-load direct voltage in kV
I = 1600 ; // current rating of bridge rectifier in A
I_d = I ; // Max continuous current in A

// CALCULATIONS
// For case (a)
S_B = 1.047 * V_d0 * I_d ; // 3-phase kVA rating of rectifier transformer

// For case (b)
// SINCE   V_d0 = 2.34*E_LN
E_LN = V_d0/2.34 ; // Wye side kV rating

// DISPLAY RESULTS
disp("EXAMPLE : 6.3 : SOLUTION :-") ;
printf("\n (a) Three-phase kilovolt-ampere rating , S_B = %d kVA \n",S_B) ;
printf("\n (b) Wye-side kilovolt rating , E_L-N = %.4f kV \n",E_LN) ;
