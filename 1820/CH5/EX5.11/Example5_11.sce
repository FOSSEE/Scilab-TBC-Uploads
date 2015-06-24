// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.11 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
f= 60 ; // frequency in hertz
T = 0.175 ; // insulation thickness in inches
d = 0.539 ; // diameter of conductor in inches
G = 0.5 ; // Geometric factor from fig 5.3
K = 3.7 ; // Dielectric constant
V_LL = 13.8 ; // Line-to-line voltage in kV

// CALCULATIONS
D = d + 2 * T ; // Inside diameter of sheath in inches
G = 2.303 * log10 (D/d) ; // Geometric factor for a single conductor
sf = 0.710 ; // sector factor From Table 5.3 . For (T+t/d) obtained
V_LN = V_LL/sqrt(3) ; // Line-to-neutral voltage in kV

// For case (a)
C_0 = 0.0892 * K/(G * sf) ; // shunt capacitances in μF/mi/phase . C_0 = C_1 = C_2 . From equ 5.161

// For case (b)
X_0 = 1.79 * G * sf/( f * K ) ; // shunt capacitive reactance in MΩ/mi/phase .X_0 = X_1 = X_2. From equ 5.162

// For case (c)
I_0 = 0.323 * f * K * V_LN/( 1000 * G * sf ) ; // Charging current in A/mi/phase .I_0 = I_1 = I_2. From equ 5.163

// DISPLAY RESULTS
disp("EXAMPLE : 5.11 : SOLUTION :-") ;
printf("\n (a) Shunt capacitances for zero , positive & negative sequences , C_0 = C_1 = C_2 = %.2f μF/mi/phase \n",C_0) ;
printf("\n (b) Shunt capacitive reactance for zero , positive & negative sequences , X_0 = X_1 = X_2 = %.2e MΩ/mi/phase \n",X_0) ;
printf("\n (c) Charging current for zero , positive & negative sequences , I_0 = I_1 = I_2 = %.3f A/mi/phase \n",I_0) ;

printf("\n NOTE : 2.87e-03 MΩ/mi/phase can also be written as 2.87 kΩ/mi/phase as in textbook case (b) \n") ;
