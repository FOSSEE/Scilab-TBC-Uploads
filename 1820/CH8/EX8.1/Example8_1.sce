// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 8 : LIMITING FACTORS FOR EXTRA-HIGH AND ULTRAHIGH VOLTAGE TRANSMISSION

// EXAMPLE : 8.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
m_0 = 0.90 ; // Irregularity factor
p = 74 ; // Atmospheric pressure in Hg
t = 10 ; // temperature in degree celsius
D = 550 ; // Equilateral spacing b/w conductors in cm
d = 3 ; // overall diameter in cm

// CALCULATIONS
// For case (a)
r = d/2 ;
delta = 3.9211 * p/( 273 + t ) ; // air density factor
V_0_ph = 21.1 * delta * m_0 * r * log(D/r) ; // disruptive critical rms line voltage in kV/phase
V_0 = sqrt(3) * V_0_ph ; // disruptive critical rms line voltage in kV 

// For case (b)
m_v = m_0 ;
V_v_ph = 21.1*delta*m_v*r*(1 + (0.3/sqrt(delta*r) )) * log(D/r) ; // visual critical rms line voltage in kV/phase
V_v = sqrt(3)*V_v_ph ; // visual critical rms line voltage in kV 

// DISPLAY RESULTS
disp("EXAMPLE : 8.1 : SOLUTION :-") ;
printf("\n (a) Disruptive critical rms line voltage , V_0 = %.1f kV \n",V_0) ;
printf("\n (b) Visual critical rms line voltage , V_v = %.1f kV \n",V_v) ;
