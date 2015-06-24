// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// APPENDIX C : REVIEW OF BASICS

// EXAMPLE : C.4 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
I_1 = 1000 ; // Physical current in A for 2.4 kV circuit
Z_pu = 0.04 ; // Leakage reactance in pu
I_pu = 2.08*exp(%i*(-90)*%pi/180) ; // Generator supply for pure inductive load 
kVA_Bg1 = 6000 ; // Rated kVA values for T1
kVA_Bg2 = 4000 ; // Rated kVA values for T2
N2 = 2.4 ; // N2 = V2 in Y kV ,refer fig C.4
N1 = 24 ; // N1 = V1 in Y kV ,refer fig C.4
N3 = 24 ; // N3 = V3 = N1 in Y kV ,refer fig C.4
N4 = 12 ; // N4 = V4 in Y kV ,refer fig C.4

// CALCULATIONS
// For case (a)
kVA_B = 2080 ; // arbitrarily selected kVA values for all 3 ckt

// For case (b)
n1 = N2/N1 ; // Turns ratio of transformer T1 & T2 i.e N2/N1
n2 = N3/N4 ; // Turns ratio N1'/N2'
kV_BL_L1 = 2.5 ; // arbitrarily selected Base voltage for 2.4 kV ckt in kV
kV_BL_L2 = kV_BL_L1/n1 ; // arbitrarily selected Base voltage for 24 kV ckt in kV
kV_BL_L3 = kV_BL_L2/n2 ; // arbitrarily selected Base voltage for 12 kV ckt in kV

// For case (c)
Z_B1 = (kV_BL_L1)^(2) * 1000/(kVA_B) ; // Base impedance in Ω for 2.4 kV ckt
Z_B2 = (kV_BL_L2)^(2) * 1000/(kVA_B) ; // Base impedance in Ω for 24 kV ckt
Z_B3 = (kV_BL_L3)^(2) * 1000/(kVA_B) ; // Base impedance in Ω for 12 kV ckt

// For case (d)
I_B1 = kVA_B/(sqrt(3)*kV_BL_L1) ; // Base current in A for 2.4 kV ckt
I_B2 = kVA_B/(sqrt(3)*kV_BL_L2) ; // Base current in A for 24 kV ckt
I_B3 = kVA_B/(sqrt(3)*kV_BL_L3) ; // Base current in A for 12 kV ckt

// For case (e)
I_2 = (n1) * I_1 ; // Physical current in A for 24 kV circuit
I_4 = (n2) * I_2 ; // Physical current in A for 12 kV circuit

// For case (f)
I_pu_3ckt = abs(I_pu) ; // per-unit current values for all 3-ckt

// For case (g)
kV_B1 = N2 ; // Given voltage in kV
kV_B2 = N4 ; // Given voltage in kV
Z_pu_T1 = (%i)*Z_pu*(kVA_B/kVA_Bg1)*(kV_B1/kV_BL_L1)^(2) ; // New reactance of T1
Z_pu_T2 = (%i)*Z_pu*(kVA_B/kVA_Bg2)*(kV_B2/kV_BL_L3)^(2) ; // New reactance of T2

// For case (h)
V1 = kV_B1/kV_BL_L1 ; // voltage in pu at bus 1
V2 = V1 - I_pu * (Z_pu_T1) ; // voltage in pu at bus 2
V4 = V2 - I_pu * (Z_pu_T2) ; // voltage in pu at bus 3

// For case (i)
S1 = V1 * abs(I_pu) ; // Apparent power value at bus 1 in pu
S2 = V2 * abs(I_pu) ; // Apparent power value at bus 2 in pu
S4 = V4 * abs(I_pu) ; // Apparent power value at bus 4 in pu

// DISPLAY RESULTS
disp("EXAMPLE : C.3 : SOLUTION :-") ;
printf("\n (a) Base kilovoltampere value for all 3-circuits is , kVA_B = %.1f kVA \n",kVA_B) ;
printf("\n (b) Base line-to-line kilovolt value for 2.4 kV circuit , kV_BL_L = %.1f kV \n",kV_BL_L1) ;
printf("\n     Base line-to-line kilovolt value for 24 kV circuit , kV_BL_L = %.1f kV \n",kV_BL_L2) ;
printf("\n     Base line-to-line kilovolt value for 24 kV circuit , kV_BL_L = %.1f kV \n",kV_BL_L3) ;
printf("\n (c) Base impedance value of 2.4 kV circuit , Z_B = %.3f Ω \n",Z_B1) ;
printf("\n     Base impedance value of 24 kV circuit , Z_B = %.1f Ω \n",Z_B2) ;
printf("\n     Base impedance value of 12.5 kV circuit , Z_B = %.1f Ω \n",Z_B3) ;
printf("\n (d) Base current value of 2.4 kV circuit , I_B = %d A \n",I_B1) ;
printf("\n     Base current value of 24 kV circuit , I_B = %d A \n",I_B2) ;
printf("\n     Base current value of 2.4 kV circuit , I_B = %d A \n",I_B3) ;
printf("\n (e) Physical current of 2.4 kV circuit , I = %.f A \n",I_1) ;
printf("\n     Physical current of 24 kV circuit , I = %.f A \n",I_2) ;
printf("\n     Physical current of 12 kV circuit , I = %.f A \n",I_4) ;
printf("\n (f) Per unit current values for all 3 circuits , I_pu = %.2f pu \n",I_pu_3ckt) ;
printf("\n (g) New transformer reactance of T1 , Z_pu_T1 =  j%.4f pu \n",abs(Z_pu_T1)) ;
printf("\n     New transformer reactance of T2 , Z_pu_T2 =  j%.4f pu \n",abs(Z_pu_T2)) ;
printf("\n (h) Per unit voltage value at bus 1 ,V1 = %.2f<%.1f pu \n",abs(V1),atand(imag(V1),real(V1))) ;
printf("\n     Per unit voltage value at bus 2 ,V2 = %.4f<%.1f pu \n",abs(V2),atand(imag(V2),real(V2))) ;
printf("\n     Per unit voltage value at bus 4 ,V4 = %.4f<%.1f pu \n",abs(V4),atand(imag(V4),real(V4))) ;
printf("\n (i) Per-unit apparent power value at bus 1 , S1 = %.2f pu \n",S1) ;
printf("\n     Per-unit apparent power value at bus 2 , S2 = %.4f pu \n",S2) ;
printf("\n     Per-unit apparent power value at bus 4 , S4 = %.4f pu \n",S4) ;
printf("\n (j) TABLE C.2 \n") ;
printf("\n     Results Of Example C.4 \n") ;
printf("\n     ___________________________________________________________________________________") ;
printf("\n     QUANTITY      \t  2.4-kV circuit   \t  24-kV circuit   \t  12-kV circuit   ");
printf("\n     ___________________________________________________________________________________") ;
printf("\n     kVA_B(3-Φ)    \t  %d kVA           \t  %d kVA          \t  %d kVA \n",kVA_B,kVA_B,kVA_B) ;
printf("\n     kV_B(L-L)     \t  %.1f kV          \t  %d kV           \t  %.1f kV \n",kV_BL_L1,kV_BL_L2,kV_BL_L3) ;
printf("\n     Z_B           \t  %.3f Ω           \t  %.1f Ω          \t  %.1f Ω \n",Z_B1,Z_B2,Z_B3) ;
printf("\n     I_B           \t  %d A             \t  %d A            \t  %d A \n",I_B1,I_B2,I_B3) ;
printf("\n     I_physical    \t  %d A             \t  %.f A           \t  %.f A \n",I_1,I_2,I_4) ;
printf("\n     I_pu          \t  %.2f pu          \t  %.2f pu         \t  %.2f pu \n",I_pu_3ckt,I_pu_3ckt,I_pu_3ckt) ;
printf("\n     V_pu          \t  %.2f pu          \t  %.4f pu         \t  %.4f pu \n",abs(V1),abs(V2),abs(V4)) ;
printf("\n     S_pu          \t  %.2f pu          \t  %.4f pu         \t  %.4f pu \n",S1,S2,S4) ;
printf("     ___________________________________________________________________________________") ;
