// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.5 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
Z_012 = [(19.6736 + 109.05044*%i) (0.5351182 + 0.4692097*%i) (- 0.5351182 + 0.4692097*%i) ; (- 0.5351182 + 0.4692097*%i) (8.24 + 28.471684*%i) (- 1.0702365 - 0.9384195*%i) ; (0.5351182 + 0.4692097*%i) (1.0702365 - 0.9384195*%i) (8.24 + 28.471684*%i)] ; // Line impedance matrix . result of exa 9.3
Y_012 = inv(Z_012) ; // Sequence admittance of line

// CALCULATIONS
// For case (a)
Y_01 = Y_012(1,2) ;
Y_11 = Y_012(2,2) ;
m_0 = Y_01/Y_11 ; // Per-unit unbalance for zero-sequence in pu from equ 9.67b
m_0_per = m_0 * 100 ; // Per-unit unbalance for zero-sequence in percentage

// For case (b)
Z_01 = Z_012(1,2) ;
Z_00 = Z_012(1,1) ;
m_01 = -(Z_01/Z_00) ; // Per-unit unbalance for zero-sequence in pu from equ 9.67b
m_01_per = m_01 * 100 ; // Per-unit unbalance for zero-sequence in percentage

// For case (c)
Y_21 = Y_012(3,2) ;
Y_11 = Y_012(2,2) ;
m_2 = (Y_21/Y_11) ; // Per-unit unbalance for zero-sequence in pu from equ 9.67b
m_2_per = m_2 * 100 ; // Per-unit unbalance for zero-sequence in percentage

// For case (d)
Z_21 = Z_012(3,2) ;
Z_22 = Z_012(3,3) ;
m_21 = -(Z_21/Z_22) ; // Per-unit unbalance for zero-sequence in pu from equ 9.67b
m_21_per = m_21 * 100 ; // Per-unit unbalance for zero-sequence in percentage

// DISPLAY RESULTS
disp("EXAMPLE : 9.5 : SOLUTION :-") ;
printf("\n (a) Per-unit electromagnetic unbalance for zero-sequence , m_0 = %.2f<%.1f percent pu \n",abs(m_0_per),atand( imag(m_0_per),real(m_0_per) )) ;
printf("\n (b) Approximate value of Per-unit electromagnetic unbalance for negative-sequence , m_0 = %.2f<%.1f percent pu \n",abs(m_01_per),atand( imag(m_01_per),real(m_01_per) )) ;
printf("\n (c) Per-unit electromagnetic unbalance for negative-sequence , m_2 = %.2f<%.1f percent pu \n",abs(m_2_per),atand( imag(m_2_per),real(m_2_per) )) ;
printf("\n (d) Approximate value of Per-unit electromagnetic unbalance for negative-sequence , m_2 = %.2f<%.1f percent pu \n",abs(m_21_per),atand( imag(m_21_per),real(m_21_per) )) ;
