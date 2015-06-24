// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 10 : PROTECTIVE EQUIPMENT AND TRANSMISSION SYSTEM PROTECTION

// EXAMPLE : 10.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
X_d = 0.14*%i ; // Reactance of generator in pu
E_g = 1*exp(%i*0*%pi/180) ;
S_B = 25*10^3 ; // voltage in kVA
V_BL_V = 13.8 ; // low voltage in kV

// CALCULATIONS
I_f = E_g/X_d ; // Subtransient fault current in pu
I_BL_V = S_B/( sqrt(3)*V_BL_V) ; // Current base for low-voltage side
I_f1 = abs(I_f)*I_BL_V ; // magnitude of fault current in A

// DISPLAY RESULTS
disp("EXAMPLE : 10.1 : SOLUTION :-") ;
printf("\n Subtransient fault current for 3-Φ fault in per units = pu \n") ; disp(I_f) ;
printf("\n Subtransient fault current for 3-Φ fault in ampere = %.f A \n",I_f1) ;
