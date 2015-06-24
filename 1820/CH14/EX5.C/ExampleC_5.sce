// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// APPENDIX C : REVIEW OF BASICS

// EXAMPLE : C.5 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
D_ab = 6.8 ; // distance b/w conductors center-to-center in ft
D_bc = 5.5 ; // distance b/w conductors center-to-center in ft
D_ca = 4 ; // distance b/w conductors center-to-center in ft

// CALCULATIONS
// For case (a)
D_eq = (D_ab * D_bc * D_ca)^(1/3) ; // Equi spacing for pole top in ft
D_s = 0.01579 ; // GMR in ft From Table A.1
X_L = 0.1213 * log(D_eq/D_s) ; // Inductive reactance in Ω/mi . From equ C.135

// For case (b)
X_a = 0.503 ; // Inductive reactance in Ω/mi From Table A.1 
X_d = 0.2026 ; // From Table A.8 for D_eq,by linear interpolation in Ω/mi
X_L1 = X_a + X_d ; // Inductive reactance in Ω/mi

// DISPLAY RESULTS
disp("EXAMPLE : C.5 : SOLUTION :-") ;
printf("\n (a) Inductive reactance using equation C.135 , X_L = %.4f Ω/mi \n",X_L );
printf("\n (b) Inductive reactance using tables , X_L = %.4f Ω/mi \n",X_L1) ;
