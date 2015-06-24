
// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.15 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
Y_11 = -2.2115*%i ;
Y_12 = 0.2404*%i ;
Y_21 = 0.2404*%i ;
Y_22 = -2.0912*%i ;
Y = [Y_11 Y_12 ; Y_21 Y_22] ;
I_S1 = 2.3077*%i ;
I_S2 = 1.9230*%i ;

I_a1 = poly(0,'I_a1') ;
I_a2 = poly(0,'I_a2') ;
a = Y_12*I_S2 - Y_22*I_S1 ;
b = (Y_12+Y_22)*I_a1 ;
c = Y_12*I_S1 - Y_11*I_S2 ;
d = (Y_12 + Y_11)*I_a1 ;
V1 = (1/det(Y))*[(a-b) ; (c+d)] ; // Gives the uncoupled positive sequence N/W
A = (Y_12+Y_22)*I_a2 ;
B = (Y_12 + Y_11)*I_a2 ;
V2 = (1/det(Y))*[A ; B] ; // Gives the uncoupled negative sequence N/W

// DISPLAY RESULTS
disp("EXAMPLE : 9.15 : SOLUTION :-") ;
printf("\n (a) [V_a1 ; V_a11] = ") ; disp(V1) ;
printf("\n     Values of Uncoupled positive-sequence network \n") ;
printf("\n (b) [V_a2 ; V_a22] = ") ; disp(V2) ;
printf("\n     Values of Uncoupled negative-sequence network \n") ;
