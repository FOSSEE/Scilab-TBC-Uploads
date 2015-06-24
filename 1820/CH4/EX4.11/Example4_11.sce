// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.11 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
Z_1 = 10*exp(%i*(30)*%pi/180) ; // Impedance in Ω
Z_2 = 40*exp(%i*(-45)*%pi/180) ; // Impedance in Ω
Y_2 = 1/Z_2 ;
A_1 = 1 ;
B_1 = Z_1 ;
C_1 = 0 ;
D_1 = 1 ;
A_2 = 1 ;
B_2 = 0 ;
C_2 = Y_2 ;
D_2 = 1 ;

// CALCULATIONS
P = [A_1 B_1 ; C_1 D_1]; // For network 1
Q = [A_2 B_2 ; C_2 D_2]; // For network 2
A_eq = ( A_1*B_2 + A_2*B_1 )/( B_1 + B_2 ) ; // Constant A
B_eq = ( B_1*B_2 )/(B_1 + B_2) ; // Constant B
C_eq = C_1 + C_2 + ( (A_1 - A_2) * (D_2 -D_1)/(B_1 + B_2) ) ; // Constant C
D_eq = ( D_1*B_2 + D_2*B_1 )/(B_1+B_2) ; // Constant D

// DISPLAY RESULTS
disp("EXAMPLE : 4.11 : SOLUTION :-") ;
printf("\n Equivalent A , B , C , D constants are \n") ;
printf("\n A_eq = %.2f<%.f \n",abs(A_eq),atand( imag(A_eq),real(A_eq) )) ;
printf("\n B_eq = %.2f<%.f \n",abs(B_eq),atand( imag(B_eq),real(B_eq) )) ;
printf("\n C_eq = %.3f<%.f \n",abs(C_eq),atand( imag(C_eq),real(C_eq) )) ;
printf("\n D_eq = %.2f<%.f \n",abs(D_eq),atand( imag(D_eq),real(D_eq) )) ;
