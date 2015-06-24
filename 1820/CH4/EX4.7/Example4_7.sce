
// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.7 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
R = 0.1858 // Line constant in Ω/mi
f = 60 // frequency in Hertz
L = 2.60*10^-3 // Line constant in H/mi
C = 0.012*10^-6 // Line constant in F/mi
l = 150 // length of 3-Φ transmission line in mi

// CALCULATIONS
z = R + %i*2*%pi*f*L ; // Impedance per unit length in Ω/mi
y = %i*2*%pi*C*f ; // Admittance per unit length in S/mi
g = sqrt(y*z) ; // Propagation constant of line per unit length
g_l = real(g) * l + %i * imag(g) * l ; // Propagation constant of line
Z_c = sqrt(z/y) ; // Characteristic impedance of line

A = cosh(g_l) ;
B = Z_c * sinh(g_l) ;
C = (1/Z_c) * sinh(g_l) ;
D = A ;
Z_pi = B ;
Y_pi_by2 = (A-1)/B ; // Unit in Siemens
Z = l * z ; // unit in ohms
Y = y * l ;
Y_T = C ;
Z_T_by2 = (A-1)/C ; // Unit in Ω

// DISPLAY RESULTS
disp("EXAMPLE : 4.7 : SOLUTION :-") ;
printf("\n FOR EQUIVALENT-π CIRCUIT ") ;
printf("\n   Z_π = B = %.2f<%.2f Ω \n",abs(Z_pi),atand( imag(Z_pi),real(Z_pi) )) ;
printf("\n   Y_π/2 = %.6f<%.2f S \n",abs(Y_pi_by2),atand( imag(Y_pi_by2),real(Y_pi_by2) )) ;
printf("\n FOR NOMINAL-π CIRCUIT ") ;
printf("\n   Z = %.3f<%.2f Ω \n",abs(Z),atand( imag(Z),real(Z) )) ;
printf("\n   Y/2 = %.6f<%.1f S \n",abs(Y/2),atand( imag(Y/2),real(Y/2) )) ;
printf("\n FOR EQUIVALENT-T CIRCUIT ") ;
printf("\n   Z_T/2 = %.2f<%.2f Ω \n",abs(Z_T_by2),atand( imag(Z_T_by2),real(Z_T_by2) )) ;
printf("\n   Y_T = C = %.5f<%.2f S \n",abs(Y_T),atand( imag(Y_T),real(Y_T) )) ;
printf("\n FOR NOMINAL-T CIRCUIT ") ;
printf("\n   Z/2 = %.2f<%.2f Ω \n",abs(Z/2),atand( imag(Z/2),real(Z/2) )) ;
printf("\n   Y = %.6f<%.1f S \n",abs(Y),atand( imag(Y),real(Y) )) ;
