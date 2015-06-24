// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
d = 2 ; // Diameter  of conductor in cm
D = 5 ; // Inside diameter of lead sheath in cm
V = 24.9 ; // Line-to-neutral voltage in kV

// CALCULATIONS
// For case (a)
r = d/2 ;
R = D/2 ;
E_max = V/( r * log(R/r) ) ; // Maximum electric stress in kV/cm
E_min = V/( R * log(R/r) ) ; // Minimum electric stress in kV/cm

// For case (b)
r_1 = R/2.718 ; // Optimum conductor radius in cm . From equ 5.15
E_max1 = V/( r_1 * log(R/r_1) ) ; // Min value of max stress in kV/cm

// DISPLAY RESULTS
disp("EXAMPLE : 5.1 : SOLUTION :-") ;
printf("\n (a) Maximum value of electric stress , E_max = %.2f kV/cm \n",E_max) ;
printf("\n     Minimum value of electric stress , E_min = %.2f kV/cm \n",E_min) ;
printf("\n (b) Optimum value of conductor radius , r = %.2f cm \n",r_1) ;
printf("\n     Minimum value of maximum stress , E_max = %.2f kV/cm \n",E_max1) ;
