// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// APPENDIX C : REVIEW OF BASICS

// EXAMPLE : C.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
z = 100 * exp(60*%i*%pi/180) ; // Impedance of transmission line in Ω
v1 = 73034.8 * exp(30*%i*%pi/180) ; // Bus voltages in V
v2 = 66395.3 * exp(20*%i*%pi/180) ; // Bus voltages in V

// CALCULATIONS
// For case (a)
S_12 = v1 * ( conj(v1) - conj(v2) )/( conj(z) ) ; // Complex power per phase in VA


// For case (b)
P_12 = real(S_12) ; // Active power per phase in W

// For case (c)
Q_12 = imag(S_12) ; // Reactive power per phase in vars

// DISPLAY RESULTS
disp("EXAMPLE : C.1 : SOLUTION :-") ;
printf("\n (a) Complex power per phase that is being transmitted from bus 1 to bus 2 , S12 = %.2f<%.2f VA \n",abs(S_12), atan(imag(S_12),real(S_12))*(180/%pi)) ;
printf("\n (b) Active power per phase that is being transmitted , P12 = %.2f W \n",P_12) ;
printf("\n (b) Reactive power per phase that is being transmitted , Q12 = %.2f vars \n",Q_12) ;
