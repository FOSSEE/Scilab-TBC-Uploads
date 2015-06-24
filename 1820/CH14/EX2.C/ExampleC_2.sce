// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// APPENDIX C : REVIEW OF BASICS

// EXAMPLE : C.2 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
X_pu = 12/100 ; // Leakage reactance in pu
kV_B_HV = 345 ; // HV side ratings in Y kV
kV_B_LV = 34.5 ; // LV side ratings in Y kV
MVA_B = 20 ; // selected Base on HV side in MVA

// CALCULATIONS
// For case (a)
X_pu = 12/100 ; // Reactance of transformer in pu

// For case (b)
Z_B_HV = (kV_B_HV)^2/MVA_B ; // HV side base impedance in Ω

// For case (c)
Z_B_LV = (kV_B_LV)^2/MVA_B ; // LV side base impedance in Ω

// For case (d)
X_HV = X_pu * Z_B_HV ; // Reactance referred to HV side in Ω

// For case (e)
X_LV = X_pu * Z_B_LV ; // Reactance referred to LV side in Ω
n = (kV_B_HV/sqrt(3))/(kV_B_LV/sqrt(3)) ; // Turns ratio of winding
X_LV1 = X_HV/n^2 ; // From equ C.89

// DISPLAY RESULTS
disp("EXAMPLE : C.2 : SOLUTION :-") ;
printf("\n (a) Reactance of transformer in pu , X_pu = %.2f pu \n",X_pu) ;
printf("\n (b) High-voltage side base impedance , Z_B_HV = %.2f Ω \n",Z_B_HV) ;
printf("\n (c) Low-voltage side base impedance , Z_B_LV = %.4f Ω \n",Z_B_LV) ;
printf("\n (d) Transformer reactance referred to High-voltage side , X_HV = %.2f Ω \n",X_HV) ;
printf("\n (e) Transformer reactance referred to Low-voltage side , X_LV = %.4f Ω \n",X_LV) ;
printf("     (or) From another equation C.89 ,") ;
printf("\n     Transformer reactance referred to Low-voltage side , X_LV = %.4f Ω \n",X_LV1) ;
