// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.14 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
VG_1 = 1*exp(%i*0*%pi/180) ;
VG_2 = 1*exp(%i*0*%pi/180) ;

// CALCULATIONS
// For case (a)
I_1 = 1*exp(%i*0*%pi/180) ;
I_2 = 1*exp(%i*0*%pi/180) ;
V_1 = 0.4522*exp(%i*90*%pi/180) ;
V_2 = 0.4782*exp(%i*90*%pi/180) ;
Y_11 = I_1/V_1 ; // When V_2 = 0 
Y_21 = (-0.1087)*Y_11 ; // When V_2 = 0 
Y_22 = I_2/V_2 ; // When V_1 = 0 
Y_12 = Y_21 ;
Y = [Y_11 Y_12 ; Y_21 Y_22] ; // Admittance matrix associated with positive-sequence n/w

// For case (b)
I_S1_12 = 2.0193*exp(%i*90*%pi/180) ; // Short-ckt F & F' to neutral & by superposition theorem
I_S1_10 = 0.2884*exp(%i*90*%pi/180) ; // Short-ckt F & F' to neutral & by superposition theorem
I_S2_12 = 0.4326*exp(%i*90*%pi/180) ;
I_S2_10 = 1.4904*exp(%i*90*%pi/180) ;
I_S1 = I_S1_12 + I_S1_10 ;
I_S2 = I_S2_12 + I_S2_10 ;

// DISPLAY RESULTS
disp("EXAMPLE : 9.14 :SOLUTION :-") ;
printf("\n (a) Admittance matrix associated with positive-sequence network , Y = \n") ; disp(Y) ;
printf("\n (b) Source currents Two-port Thevenin equivalent positive sequence network are , \n") ;
printf("\n     I_S1 = %.4f<%.f pu ",abs(I_S1),atand( imag(I_S1),real(I_S1) )) ;
printf("\n     I_S2 = %.4f<%.f pu \n",abs(I_S2),atand( imag(I_S2),real(I_S2) )) ;
