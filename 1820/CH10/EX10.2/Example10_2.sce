// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 10 : PROTECTIVE EQUIPMENT AND TRANSMISSION SYSTEM PROTECTION

// EXAMPLE : 10.2 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
// For case (a)
I_f = 7.1428571 ; // Subtransient fault current in pu . Result of exa 10.1

// For case (d)
V_pf = 13800 ; // voltage in V
zeta = 1.4 ;
I_f1 = 7471 ; // magnitude of fault current in A

// CALCULATIONS
// For case (a)
I_fdc_max = sqrt(2)*I_f ; // Max dc current in pu

// For case (b)
I_f_max = 2*I_fdc_max ; // Total max instantaneous current in pu

// For case (c)
I_momt = 1.6*I_f ; // Total rms momentary current

// For case (d)
S_int = sqrt(3)*(V_pf)*I_f1*zeta*10^-6 ; // Interrupting rating in MVA

// For case (e)
S_momt = sqrt(3)*(V_pf)*I_f1*1.6*10^-6 ; // Momentary duty of CB in MVA

// DISPLAY RESULTS
disp("EXAMPLE : 10.2 : SOLUTION :-") ;
printf("\n (a) Maximum possible dc current component , I_fdc_max = %.1f pu \n",I_fdc_max) ;
printf("\n (b) Total maximum instantaneous current , I_max = %.1f pu \n",I_f_max) ;
printf("\n (c) Momentary current , I_momentary = %.2f pu \n",I_momt) ;
printf("\n (d) Interrupting rating of a 2-cycle CB , S_interrupting = %.f MVA \n",S_int) ;
printf("\n (e) Momentary duty of a 2-cycle CB , S_momentary = %.2f MVA \n",S_momt) ;
