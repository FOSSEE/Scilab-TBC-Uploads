// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.2 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
r = 1 ; // Radius of conductor in cm
t_1 = 2 ; // Thickness of insulation layer in cm
r_1 = r + t_1 ;
r_2 = 2 ; // Thickness of insulation layer in cm . r_2 = t_1 = t_2 
R = r_1 + r_2 ;
K_1 = 4 ; // Inner layer Dielectric constant 
K_2 = 3 ; // Outer layer Dielectric constant 
kv = 19.94 ; // potential difference b/w inner & outer lead sheath in kV

// CALCULATIONS
// E_1 = 2q/(r*K_1) & E_2 = 2q/(r_1*K_2) . Let E = E_1/E_2
E = ( r_1 * K_2 )/( r * K_1 ) ; // E = E_1/E_2
V_1 = poly(0,'V_1') ; // defining unknown V_1
E_1 = V_1/( r * log(r_1/r) ) ;
V_2 = poly(0,'V_2') ; // defining unknown V_2
V_2 = kv - (V_1) ;
E_2 = V_2/( r_1 * log(R/r_1) ) ;
E_3 = E_1/E_2 ;
// Equating E = E_3 . we get the value of V_1
V_1 = 12.30891068 ; // Voltage in kV
E_1s = V_1/( r * log(r_1/r) ) ; // Potential gradient at surface of conductor in kV/cm . E_1 = E_1s

// DISPLAY RESULTS
disp("EXAMPLE : 5.2 : SOLUTION :-") ;
printf("\n Potential gradient at the surface of conductor , E_1 = %.2f kV/cm \n",E_1s) ;
