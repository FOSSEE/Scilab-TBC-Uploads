// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.10 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
Z_1 = 10 * exp(%i*(30)*%pi/180) ; // Impedance in Ω
Z_2 = 40 * exp(%i*(-45)*%pi/180) ; // Impedance in Ω

// CALCULATIONS
P = [1 ,Z_1 ; 0 , 1]; // For network 1
Y_2 = 1/Z_2 ; // unit is S
Q = [1 0 ; Y_2 1]; // For network 2
EQ = P * Q ;

// DISPLAY RESULTS
disp("EXAMPLE : 4.10 : SOLUTION :-") ;
printf("\n Equivalent A , B , C , D constants are \n") ;
printf("\n A_eq = %.3f<%.1f \n",abs( EQ(1,1) ),atand( imag(EQ(1,1)),real(EQ(1,1)) )) ;
printf("\n B_eq = %.3f<%.1f \n",abs( EQ(1,2) ),atand( imag(EQ(1,2)),real(EQ(1,2)) )) ;
printf("\n C_eq = %.3f<%.1f \n",abs( EQ(2,1) ),atand( imag(EQ(2,1)),real(EQ(2,1)) )) ;
printf("\n D_eq = %.3f<%.1f \n",abs( EQ(2,2 )),atand( imag(EQ(2,2)),real(EQ(2,2)) )) ;
