// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.16 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
H_aa = 81.5 ;
D_aa = 1.658 ;
f = 60 ; // Freq in Hz
I = 20 ;
kV = 69 ; // Line voltage in kV
MVA = 25 ; // Transformer T1 rating in MVA

// CALCULATIONS
// For case (a)
C_0 = 29.842*10^-9/(log(H_aa/D_aa)) ; // Capacitance in F/mi
b_0 = 2*%pi*f*C_0 ; // Susceptance in S/mi
B_0 = b_0*I ; // For total system
X_C0 = (1/B_0) ; // Total zero-sequence reactance in Ω
TC_0 = B_0/(2*%pi*f) ; // Total zero-sequence capacitance in F

// For case (c)
X_1 = 0.05 ; // Leakage reactance of transformer T1 in pu
X_0 = X_1 ;
X_2 = X_1 ;
Z_B = kV^2/MVA ;
X_01 = X_0*Z_B ; // Leakage reactance in Ω
V_F = 69*10^3/sqrt(3) ;
I_a0PC = V_F/(17310.8915*%i) ; // Zero-sequence current flowing through PC in A
I_PC = 3*abs(I_a0PC) ; // Continuous-current rating of the PC in A

// For case (d)
X_PC = (17310.8915 - X_01)/3 ; // Required reactance value for PC in Ω

// For case (e)
L_PC = X_PC/(2*%pi*f) ; // Inductance in H

// For case (f)
S_PC = (I_PC^2)*X_PC ; // Rating in VA
S_PC1 = S_PC*10^-3 ; // Continuous kVA rating in kVA

// For case (g)
V_PC = I_PC * X_PC ; // continuous-voltage rating for PC in V

// DISPLAY RESULTS
disp("EXAMPLE : 9.16 :SOLUTION :-") ;
printf("\n (a) Total zero-sequence susceptance per phase of system at 60 Hz , ΣX_C0 = %.4f Ω \n",X_C0) ;
printf("\n     Total zero-sequence capacitance per phase of system at 60 Hz , ΣC_0 = %.4e F \n",TC_0) ;
printf("\n (c) Continuous-current rating of the PC , I_PC = 3I_a0PC = %.4f A \n",abs(I_PC)) ;
printf("\n (d) Required reactance value for the PC , X_PC = %.4f Ω \n",X_PC) ;
printf("\n (e) Inductance value of the PC , L_PC = %.4f H \n",L_PC) ;
printf("\n (f) Continuous kVA rating for the PC , S_PC = %.2f kVA \n",S_PC1) ;
printf("\n (g) Continuous-voltage rating for PC , V_PC = %.2f V \n",V_PC) ;
