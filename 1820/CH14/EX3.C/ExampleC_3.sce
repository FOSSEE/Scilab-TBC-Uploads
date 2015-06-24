// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// APPENDIX C : REVIEW OF BASICS

// EXAMPLE : C.3 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
X_pu = 12/100 ; // Leakage reactance in pu
kV_B_HV = 345 ; // HV side ratings in Y kV
kV_B_LV = 34.5 ; // LV side ratings in Δ kV
MVA_B = 20 ; // Base on HV side in MVA

// CALCULATIONS
// For case (a)
n = ( kV_B_HV/sqrt(3) )/kV_B_LV ; // Turns ratio of windings

// For case (b)
Z_B_HV = (kV_B_HV)^2/MVA_B ; // HV side base impedance in Ω
X_HV = X_pu * Z_B_HV ; // Reactance referred to HV side in Ω
X_LV = X_HV/(n^2) ; // transformer reactance referred to delta LV side in Ω

// For case (c)
Z_dt = X_LV ;
Z_Y = Z_dt/3 ; // Reactance of equi wye connection
Z_B_LV = kV_B_LV^2/MVA_B ; // LV side base impedance in Ω
X_pu1 = Z_Y/Z_B_LV ; // reactance in pu referred to LV side

// Alternative method For case (c)
n1 = kV_B_HV/kV_B_LV ; // Turns ratio if line-to-line voltages are used
X_LV1 = X_HV/(n1^2) ; // Reactance referred to LV side in Ω
X_pu2 = X_LV1/Z_B_LV ; // reactance in pu referred to LV side

// DISPLAY RESULTS
disp("EXAMPLE : C.3 : SOLUTION :-") ;
printf("\n (a) Turns ratio of windings , n = %.4f \n",n) ;
printf("\n (b) Transformer reactance referred to LV side in ohms ,X_LV = %.4f Ω \n",X_LV) ;
printf("\n (c) Transformer reactance referred to LV side in per units ,X_pu = %.2f pu \n",X_pu1) ;
printf("\n    (or) From another equation if line-to-line voltages are used ,") ;
printf("\n     Transformer reactance referred to LV side in per units ,X_pu = %.2f pu \n",X_pu2) ;
