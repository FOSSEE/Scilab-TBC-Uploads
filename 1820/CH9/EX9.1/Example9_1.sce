// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
V_a = 7.3 * exp(%i*12.5*%pi/180) ; // Phase voltage in V
V_b = 0.4 * exp(%i*(-100)*%pi/180) ; // Phase voltage in V
V_c = 4.4 * exp(%i*154*%pi/180) ; // Phase voltage in V
a = 1 * exp(%i*120*%pi/180) ; // operator 'a' by application of symmetrical components theory to 3-Φ system . Refer section 9.3 for details

// CALCULATIONS
V_a0 = (1/3) * (V_a + V_b + V_c) ; // Analysis equ in V
V_a1 = (1/3) * (V_a + a*V_b + a^2*V_c) ;
V_a2 = (1/3) * (V_a + a^2*V_b + a*V_c) ;
V_b0 = V_a0 ;
V_b1 = a^2 * V_a1 ;
V_b2 = a * V_a2 ;
V_c0 = V_a0 ;
V_c1 = a * V_a1 ;
V_c2 = a^2 * V_a2 ;

// DISPLAY RESULTS
disp("EXAMPLE : 9.1 : SOLUTION :-") ;
printf("\n The symmetrical components for the phase voltages V_a , V_b & V_c are\n") ;
printf("\n V_a0 = %.2f<%.1f V \n",abs(V_a0),atand( imag(V_a0),real(V_a0) )) ;
printf("\n V_a1 = %.2f<%.1f V \n",abs(V_a1),atand( imag(V_a1),real(V_a1) )) ;
printf("\n V_a2 = %.2f<%.1f V \n",abs(V_a2),atand( imag(V_a2),real(V_a2) )) ;
printf("\n V_b0 = %.2f<%.1f V \n",abs(V_b0),atand( imag(V_b0),real(V_b0) )) ;
printf("\n V_b1 = %.2f<%.1f V \n",abs(V_b1),atand( imag(V_b1),real(V_b1) )) ;
printf("\n V_b2 = %.2f<%.1f V \n",abs(V_b2),atand( imag(V_b2),real(V_b2) )) ;
printf("\n V_c0 = %.2f<%.1f V \n",abs(V_c0),atand( imag(V_c0),real(V_c0) )) ;
printf("\n V_c1 = %.2f<%.1f V \n",abs(V_c1),atand( imag(V_c1),real(V_c1) )) ;
printf("\n V_c2 = %.2f<%.1f V \n",abs(V_c2),atand( imag(V_c2),real(V_c2) )) ;

printf("\n NOTE : V_b1 = 3.97<-99.5 V & V_c2 = 2.52<-139.7 V result obtained is same as textbook answer V_b1 = 3.97<260.5 V & V_c2 = 2.52<220.3 V \n") ;
printf("\n Changes is due to a^2 = 1<240 = 1<-120  where 1 is the magnitude & <240 is the angle in degree \n") ;
