// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// APPENDIX C : REVIEW OF BASICS

// EXAMPLE : C.6 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
D_ab = 6.8 ; // distance b/w conductors center-to-center in ft
D_bc = 5.5 ; // distance b/w conductors center-to-center in ft
D_ca = 4 ; // distance b/w conductors center-to-center in ft
l = 100 ; // Line length in miles

// CALCULATIONS
// For case (a)
D_m = (D_ab * D_bc * D_ca)^(1/3) ; // Equi spacing for pole top in ft
r = 0.522/(2 * 12) ; // feet
X_C = 0.06836 * log10 (D_m/r) ; // Shunt capacitive reactance in MΩ*mi

// For case (b)
X_a = 0.1136 ; // Shunt capacitive reactance in MΩ*mi , From table A.1
X_d = 0.049543 ; // Shunt capacitive reactance spacing factor in MΩ*mi , From table A.9
X_C1 = X_a + X_d ; // Shunt capacitive reactance in MΩ*mi
X_C2 = X_C1/l ; // Capacitive reactance of 100 mi line in MΩ

// DISPLAY RESULTS
disp("EXAMPLE : C.6 : SOLUTION :-") ;
printf("\n (a) Shunt capacitive reactance using equation C.156 , X_C = %.6f MΩ*mi \n",X_C) ;
printf("\n (b) Shunt capacitive reactance using tables , X_C = %.6f MΩ*mi \n",X_C1) ;
printf("\n (c) Capacitive reactance of total line , X_C = %.5e MΩ \n",X_C2) ;
