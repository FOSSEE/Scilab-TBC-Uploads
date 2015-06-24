
// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.6 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
kv = 115 ; // Line voltage in kV

// For case (a)
h_11 = 90 ; // GMD b/w ground wires & their images
r_a = 0.037667 ; // Radius in metre
p_aa = 11.185 * log(h_11/r_a) ; // unit is F^(-1)m
p_bb = p_aa ;
p_cc = p_aa ;
l_12 = sqrt(22 + (45 + 37)^2) ;
D_12 = sqrt(2^2 + 8^2) ; // GMR in ft
p_ab = 11.185*log(l_12/D_12) ; // unit is F^(-1)m
p_ba = p_ab ;
D_13 = sqrt(3^2 + 13^2) ; // GMR in ft
l_13 = 94.08721051 ;
p_ac = 11.185 * log(l_13/D_13) ; // unit is F^(-1)m
p_ca = p_ac ;
l_23 = 70.72279912 ;
D_23 = sqrt(5^2 + 11^2) ; // GMR in ft
p_bc = 11.185 * log(l_23/D_23) ; // unit is F^(-1)m
p_cb = p_bc ;
P_abc = [p_aa p_ab p_ac ; p_ba p_bb p_bc ; p_ca p_cb p_cc] ; // Matrix of potential coefficients

// For case (b)
C_abc = inv(P_abc) ; // Matrix of maxwells coefficients

// For case (c)
a = 1*exp(%i*120*%pi/180) ; // By symmetrical components theory to 3-Φ system
A = [1 1 1; 1 a^2 a ;1 a a^2] ;
C_012 = inv(A) * C_abc * A ; // Matrix of sequence capacitances

// For case (d)
C_01 = C_012(1,2) ;
C_11 = C_012(2,2) ;
C_21 = C_012(3,2) ;
d_0 = C_01/C_11 ; // Zero-sequence electrostatic unbalances . Refer equ 9.115
d_2 = -C_21/C_11 ; // Negative-sequence electrostatic unbalances . Refer equ 9.116

// DISPLAY RESULTS
disp("EXAMPLE : 9.6 : SOLUTION :-") ;
printf("\n (a) Matrix of potential coefficients , [P_abc] = \n") ; disp(P_abc) ;
printf("\n (b) Matrix of maxwells coefficients , [C_abc] = \n") ; disp(C_abc) ;
printf("\n (c) Matrix of sequence capacitances , [C_012] = \n") ; disp(C_012) ;
printf("\n (d) Zero-sequence electrostatic unbalances , d_0 = %.4f<%.1f \n",abs(d_0),atand( imag(d_0),real(d_0) )) ;
printf("\n     Negative-sequence electrostatic unbalances , d_2 = %.4f<%.1f \n",abs(d_2),atand( imag(d_2),real(d_2) )) ;
