// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.7 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
V_L_N = 7.2 ; // Line-to-neutral voltage in kV
d = 0.814 ; // Conductor diameter in inches
D = 2.442 ; // inside diameter of sheath in inches
K = 3.5 ; // Dielectric constant
pf = 0.03 ; // power factor of dielectric
l = 3.5 ; // length in mi
f = 60 ; // Freq in Hz
u = 1.3 * 10^7 ; // dielectric resistivity of insulation in MΩ-cm

// CALCULATIONS
// For case (a)
r = d * 2.54/2 ; // conductor radius in cm . [1 inch = 2.54 cm]
R = D * 2.54/2 ; // Inside radius of sheath in cm
E_max = V_L_N/( r * log(R/r) ) ; // max electric stress in kV/cm

// For case (b)
C = 0.0388 * K/( log10 (R/r) ) ; // capacitance of cable in μF/mi . From equ 5.29 
C_1 = C * l ; // capacitance of cable for total length in μF

// For case (c)
V_L_N1 = 7.2 * 10^3 ; // Line-to-neutral voltage in V
C_2 = C_1 * 10^-6 ; // capacitance of cable for total length in F
I_c = 2 * %pi * f * C_2 * (V_L_N1) ; // Charging current in A

// For case (d)
l_1 = l * 5280 * 12 * 2.54 ; // length in cm . [1 mi = 5280 feet] ; [1 feet = 12 inch] 
R_i = u * log(R/r)/( 2 * %pi * l_1) ; // Insulation resistance in MΩ

// For case (e)
P_lc = V_L_N^2/R_i ; // power loss in W

// For case (f)
P_dl = 2 * %pi * f * C_1 * V_L_N^2 * pf ; // Total dielectric loss in W

// For case (g)
P_dh = P_dl - P_lc ; // dielectric hysteresis loss in W

// DISPLAY RESULTS
disp("EXAMPLE : 5.7 : SOLUTION :-") ;
printf("\n (a) Maximum electric stress occuring in cable dielectric , E_max = %.2f kV/cm \n",E_max) ;
printf("\n (b) Capacitance of cable , C = %.4f μF \n",C_1) ;
printf("\n (c) Charging current of cable , I_c = %.3f A \n",I_c) ;
printf("\n (d) Insulation resistance , R_i = %.2f MΩ \n",R_i) ;
printf("\n (e) Power loss due to leakage current , P_lc = %.2f W \n",P_lc) ;
printf("\n (f) Total dielectric loss , P_dl = %.2f W \n",P_dl) ;
printf("\n (g) Dielectric hysteresis loss , P_dh = %.2f W \n",P_dh) ;
