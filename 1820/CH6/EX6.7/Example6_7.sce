// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 6 : DIRECT-CURRENT POWER TRANSMISSION

// EXAMPLE : 6.7 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
X_C = 12.649731 ; // commutating reactance when 2 breakers are open
alpha = 0 ;
I_d = 1600 ; // DC current in A
E_LN = 53.4188 * 10^3 ; // Wye-side rating in V
V_d0 = 125 * 10^3 ; // voltage rating of bridge rectifier in V

// CALCULATIONS
// For case (a)
E_m = sqrt(2) * E_LN ;
u = acosd(1 - (2 * X_C * I_d)/(sqrt(3) * E_m)) ; // overlap angle u = δ

// For case (b)
// since rectifier operates in first mode i.e doesn't operate in second mode
R_C = (3/%pi) * X_C ;
V_dr = ( V_d0 * cosd(alpha) ) - (R_C*I_d) ; // dc voltage of rectifier in V

// DISPLAY RESULTS
disp("EXAMPLE : 6.7 : SOLUTION :-") ;
printf("\n (a) u = %.1f degree \n",u) ;
printf("\n  since u < 60 degree . The rectifier operates at FIRST mode , the normal operating mode \n") ;
printf("\n (b) When dc current is 1600 A , V_dr = %.2f V \n",V_dr) ;
