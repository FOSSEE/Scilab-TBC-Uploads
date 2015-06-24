// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 10 : PROTECTIVE EQUIPMENT AND TRANSMISSION SYSTEM PROTECTION

// EXAMPLE : 10.4 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
z_l = 0.2 + %i * 0.7 ; // Line impedance in pu
f_l = 0.7 ; // Fault point at a distance from A in pu
f_m = 1.2 ; // magnitude of fault current in pu
l = 10.3 ; // Line spacing in ft
p = 100 ; // Power in MVA
v = 138 ; // voltage in kV
i = 418.4 ; // current in A
z = 190.4 ; // Impedance in Ω

// CALCULATIONS
// For case (a)
I = f_m * i ; // Current in arc in A
R_arc = 8750 * l/(I^1.4) ; // Arc resistance in Ω
R_arc1 = R_arc/z ; // Arc resistance in pu

// For case (b)
Z_L = z_l * f_l ;
Z_r = Z_L + R_arc1 ; // Impedance seen by the relay in pu

// For case (c)
phi_1 = atand( imag(Z_L),real(Z_L) ) ; // Line impedance angle without arc resistance in degree
phi_2 = atand( imag(Z_r),real(Z_r) ) ; // Line impedance angle with arc resistance in degree

// DISPLAY RESULTS
disp("EXAMPLE : 10.4 : SOLUTION :-") ;
printf("\n (a) Value of arc resistance at fault point in Ω , R_arc = %.2f Ω \n",R_arc) ;
printf("\n     Value of arc resistance at fault point in pu , R_arc = %.2f pu \n",R_arc1) ;
printf("\n (b) Value of line impedance including the arc resistance , Z_L + R_arc = pu \n") ; disp(Z_r) ;
printf("\n (c) Line impedance angle without arc resistance , Φ = %.2f degree \n",phi_1) ;
printf("\n     Line impedance angle with arc resistance , Φ = %.2f degree \n",phi_2) ;
