// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.14 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
KV = 345 ; // Transmission line voltage in kV
V_R = KV ; // Sending end voltage in kV
x_L = 0.588 ;// Inductive reactance in Ω/mi/phase 
b_c = 7.20*10^-6 ;// susceptance S phase to neutral per phase
l = 200 ;// Total line length in mi
per = 60/100 ; // 2 shunt reactors absorb 60% of total 3-Φ magnetizing var
cost = 10 ; // cost of each reactor is $10/kVA

// CALCULATIONS
// For case (a)
x_C = 1/b_c ;// Ω/mi/phase
Z_C = sqrt(x_C * x_L) ;
SIL = KV^2/Z_C ; // Surge impedance loading in MVA/mi
SIL1 = (KV^2/Z_C) * l ; // Surge impedance loading of line in MVA . [1MVA = 1MW]

// For case (b)
delta = 90 ; // Max 3-Φ theoretical steady-state power flow limit occurs for δ = 90 degree
V_S = V_R ; // sending end voltage in kV
X_L = x_L * l ; // Inductive reactance Ω/phase 
P_max = V_S * V_R * sind(delta)/(X_L) ;

// For case (c)
Q_C = V_S^2 * (b_c * l/2) + V_R^2 *( b_c * l/2) ; // Total 3-Φ magnetizing var in Mvar
Q = (1/2) * per * Q_C ; // 3-Φ megavoltampere rating of each reactor . Q = (1/2)*Q_L

// For case (d)
Q_L1 = Q * 10^3 ; // Total 3-Φ magnetizing var in Kvar
T_cost = Q_L1 * cost ; // Cost of each reactor in $

// For case (e)
g = %i * sqrt(x_L * (1-per)/x_C) ; // rad/mi
g_l = g * l ; // rad
V_R_oc = V_S/cosh(g_l) ; // Open circuit receiving-end voltage in kV
X_L = x_L *l ; 
X_C = (x_C * 2) / (l * (1 - per)) ;
V_R_oc1 = V_S * ( -%i*X_C/(-%i*X_C + %i*X_L) ) ; // Alernative method to find Open-circuit receiving-end voltage in kV

// DISPLAY RESULTS
disp("EXAMPLE : 4.14 : SOLUTION :-") ;
printf("\n (a) Total 3-phase SIL of line , SIL = %.2f MVA/mi \n",SIL) ;
printf("\n     Total 3-Φ SIL of line for total line length , SIL = %.2f MVA \n",SIL1) ;
printf("\n (b) Maximum 3-phase theortical power flow , P_max = %.2f MW \n",P_max) ;
printf("\n (c) 3-phase MVA rating of each reactor , (1/2)Q_L = %.2f MVA \n",Q) ;
printf("\n (d) Cost of each reactor at $10/kVA = $ %.2f \n",T_cost) ;
printf("\n (e) Open circuit receiving voltage , V_Roc= %.2f kV \n",V_R_oc) ;
printf("\n    From alternative method ,") ;
printf("\n     Open-circuit receiving-end voltage if line is open at receiving end , V_R_oc = %.2f kV \n",V_R_oc1) ;
