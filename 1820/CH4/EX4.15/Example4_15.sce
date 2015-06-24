// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.15 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
D_12 = 26 ; // distances in feet
D_23 = 26 ; // distances in feet
D_31 = 52 ; // distances in feet
d = 12 ; // Distance b/w 2 subconductors in inches
f = 60 ; // frequency in Hz
kv = 345 ; // voltage base in kv
p = 100 ; // Power base in MVA
l = 200 ; // length of line in km

// CALCULATIONS
// For case (a)
D_S = 0.0435 ; // from A.3 Appendix A . Geometric mean radius in feet
D_bS = sqrt(D_S * 0.3048 * d * 0.0254) ; // GMR of bundled conductor in m .[1 ft = 0.3048 m ; 1 inch = 0.0254 m]
D_eq = (D_12 * D_23 * D_31 * 0.3048^3)^(1/3) ; // Equ GMR in meter
L_a = 2 * 10^-7 * log(D_eq/D_bS); // Inductance in H/meter

// For case (b)
X_L = 2 * %pi * f * L_a ; // inductive reactance/phase in ohms/m 
X_L0 = X_L * 10^3 ; // inductive reactance/phase in ohms/km 
X_L1 = X_L0 * 1.609 ;// inductive reactance/phase in ohms/mi [1 mi = 1.609 km]

// For case (c)
Z_B = kv^2 / p ; // Base impedance in Ω
X_L2 = X_L0 * l/Z_B ; // Series reactance of line in pu

// For case (d)
r = 1.293*0.3048/(2*12) ; // radius in m . outside diameter is 1.293 inch given in A.3
D_bsC = sqrt(r * d * 0.0254) ;
C_n = 55.63 * 10^-12/log(D_eq/D_bsC) ; // capacitance of line in F/m

// For case (e)
X_C = 1/( 2 * %pi * f * C_n ) ; // capacitive reactance in ohm-m
X_C0 = X_C * 10^-3 ; // capacitive reactance in ohm-km
X_C1 = X_C0/1.609 ; // capacitive reactance in ohm-mi

// DISPLAY RESULTS
disp("EXAMPLE : 4.15 : SOLUTION :-") ;
printf("\n (a) Average inductance per phase , L_a = %.4e H/m \n",L_a) ;
printf("\n (b) Inductive reactance per phase , X_L = %.4f Ω/km \n",X_L0) ;
printf("\n     Inductive reactance per phase , X_L = %.4f Ω/mi \n",X_L1) ;
printf("\n (c) Series reactance of line , X_L = %.4f pu \n",X_L2) ;
printf("\n (d) Line-to-neutral capacitance of line , C_n = %.4e F/m \n",C_n);
printf("\n (e) Capacitive reactance to neutral of line , X_C = %.3e Ω-km \n",X_C0) ;
printf("\n     Capacitive reactance to neutral of line , X_C = %.3e Ω-mi \n",X_C1) ;
