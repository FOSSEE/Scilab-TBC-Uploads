// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.4 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
C_a = 2 * 10^-6 ; // Capacitance b/w two conductors in F/mi
l = 2 ; // length in mi
f = 60 ; // Frequency in Hz
V_L_L = 34.5 * 10^3 ; // Line-to-line voltage in V

// CALCULATIONS
C_a1 = C_a * l ; // Capacitance for total cable length in F
C_N = 2 * C_a1 ; // capacitance of each conductor to neutral in F . From equ 5.56
V_L_N = V_L_L/sqrt(3) ; // Line-to-neutral voltage in V
I_c = 2 * %pi * f * C_N * (V_L_N) ; // Charging current of cable in A

// DISPLAY RESULTS
disp("EXAMPLE : 5.4 : SOLUTION :-") ;
printf("\n Charging current of the cable , I_c = %.2f A \n",I_c) ;
