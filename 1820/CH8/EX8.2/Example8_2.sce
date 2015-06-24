// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 8 : LIMITING FACTORS FOR EXTRA-HIGH AND ULTRAHIGH VOLTAGE TRANSMISSION

// EXAMPLE : 8.2 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
f = 60 ; // freq in Hz
d = 3 ; // overall diameter in cm
D = 550 ; // Equilateral spacing b/w conductors in cm
V1 = 345 ; // operating line voltage in kV
V_0 = 172.4 ; // disruptive critical voltage in kV
L = 50 ; // line length in mi
p = 74 ; // Atmospheric pressure in Hg
t = 10 ; // temperature in degree celsius
m_0 = 0.90 ; // Irregularity factor

// CALCULATIONS
r = d/2 ;
delta = 3.9211 * p/( 273 + t ) ; // air density factor
V_0 = 21.1 * delta * m_0 * r * log(D/r) ; // disruptive critical rms line voltage in kV/phase
V =V1/sqrt(3) ; // Line to neutral operating voltage in kV
P_c = (390/delta)*(f+25)*sqrt(r/D)*(V - V_0)^2 * 10^-5 ; // Fair weather corona loss per phase in kW/mi/phase
P_cT = P_c * L ; // For total line length corona loss in kW/phase
T_P_c = 3 * P_cT ; // Total corona loss of line in kW

// DISPLAY RESULTS
disp("EXAMPLE : 8.2 : SOLUTION :-") ;
printf("\n (a) Total fair weather corona loss of the line , P_c = %.1f kW \n",T_P_c) ;
