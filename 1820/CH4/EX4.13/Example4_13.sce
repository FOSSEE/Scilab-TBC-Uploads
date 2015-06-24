// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.13 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
KV = 345 ; // Transmission line voltage in kV
V_R = KV ;
V_S = KV ; 
x_L = 0.588 ;// Inductive reactance in Ω/mi/phase 
b_c = 7.20*10^-6 ;// susceptance S phase to neutral per phase
l = 200 ;// Total line length in mi

// CALCULATIONS
// for case (a)
x_C = 1/b_c ;// Ω/mi/phase
Z_C = sqrt(x_C * x_L) ;
SIL = KV^2/Z_C ; // Surge impedance loading in MVA/mi . [1MVA = 1MW]
SIL1 = (KV^2/Z_C) * l ; // Surge impedance loading of line in MVA . [1MVA = 1MW]

// for case (b)
delta = 90 ; // Max 3-Φ theoretical steady-state power flow limit occurs for δ = 90 degree
X_L = x_L * l ; // Inductive reactance Ω/phase 
P_max = V_S * V_R * sind(delta)/(X_L) ;

// for case (c)
Q_C = V_S^2 * (b_c * l/2) + V_R^2 *( b_c * l/2) ; // Total 3-Φ magnetizing var in Mvar

// for case (d)
g = %i * sqrt(x_L/x_C) ; // rad/mi
g_l = g * l ; // rad
V_R_oc = V_S / cosh(g_l) ; // Open-circuit receiving-end voltage in kV
X_C = x_C * 2 / l ;
V_R_oc1 = V_S * ( - %i * X_C/( - %i * X_C + %i * X_L) ) ; // Alernative method to find Open-circuit receiving-end voltage in kV

// DISPLAY RESULTS
disp("EXAMPLE : 4.13 : SOLUTION :-") ;
printf("\n (a) Total 3-Φ SIL of line , SIL = %.2f MVA/mi \n",SIL) ;
printf("\n     Total 3-Φ SIL of line for total line length , SIL = %.2f MVA \n",SIL1) ;
printf("\n (b) Maximum 3-Φ theortical steady-state power flow limit , P_max = %.2f MW \n",P_max) ;
printf("\n (c) Total 3-Φ magnetizing var generation by line capacitance , Q_C = %.2f Mvar \n",Q_C) ;
printf("\n (d) Open-circuit receiving-end voltage if line is open at receiving end , V_R_oc = %.2f kV \n",V_R_oc) ;
printf("\n    From alternative method ,") ;
printf("\n     Open-circuit receiving-end voltage if line is open at receiving end , V_R_oc = %.2f kV \n",V_R_oc1) ;
