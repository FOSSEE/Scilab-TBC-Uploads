// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION
// EXAMPLE : 4.2 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
// for case (a)
V_S = 14803 ; // sending end phase voltage at no load in volts . From exa 4.1
V_R = 13279.056 ; // receiving end phase voltage at full load in volts . From exa 4.1

// for case (b)
I_R = 265.78785 ; // Line current in amperes . From exa 4.1
z_t = 2.48+%i*6.57 ; // Total impedance in ohm/phase
pf = 0.85 ; // power factor
theta_R = acosd(pf) ;

// CALCULATIONS
// for case (a)
V_reg1 = ( (V_S - V_R)/V_R )*100 ; // percentage voltage regulation using equ 4.29

// for case (b)
V_reg2 = (I_R * ( real(z_t) * cosd(theta_R) + imag(z_t) * sind(theta_R) )/ V_R)*100 ; // percentage voltage regulation using equ 4.31

// DISPLAY RESULTS
disp("EXAMPLE : 4.2 : SOLUTION :-") ;
printf("\n (a) Percentage of voltage regulation using equ 4.29 = %.1f \n",V_reg1) ;
printf("\n (b) Percentage of voltage regulation using equ 4.31 = %.1f \n",V_reg2) ;

printf("\n NOTE : ERROR : The question is with respect to values given in Exa 4.1 not 4.5 \n") ;
