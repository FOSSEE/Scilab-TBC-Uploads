// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.6 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
f = 60 ; // Freq in Hz
V_L_L = 138 ; // Line-to-line voltage in kV
T = 11/64 ; // Thickness of conductor insulation in inches
t = 5/64 ; // Thickness of belt insulation in inches
d =  0.575 ; // Outside diameter of conductor in inches

// CALCULATIONS
// For case (a)
T_1 = (T + t)/d ; // To find the value of geometric factor G for a single-conductor cable
G_1 = 2.09 ; // From table 5.3 , by interpolation
sf = 0.7858 ; // sector factor obtained for T_1 from table 5.3
G = G_1 * sf ; // real geometric factor

// For case (b)
V_L_N = V_L_L/sqrt(3) ; // Line-to-neutral voltage in V
K = 3.3 ; // Dielectric constant of insulation for impregnated paper cable
I_c = 3 * 0.106 * f * K * V_L_N/(1000 * G) ; // Charging current in A/1000ft

// DISPLAY RESULTS
disp("EXAMPLE : 5.6 : SOLUTION :-") ;
printf("\n (a) Geometric factor of cable using table 5.3 , G_1 = %.3f \n",G) ;
printf("\n (b) Charging current , I_c = %.3f A/1000ft \n",I_c) ;
