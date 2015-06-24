// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 6 : DIRECT-CURRENT POWER TRANSMISSION

// EXAMPLE : 6.4 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
E_LN = 53.418803 ; // Wye-side kV rating . From exa 6.3
I = 1600 ; // current rating of bridge rectifier in A
I_d = I ; // Max continuous current in A
X_tr = 0.10 ; // impedance of rectifier transformer in pu Ω

// For case (a)
sc_MVA1 = 4000 ; // short-ckt MVA

// For case (b)
sc_MVA2 = 2500 ; // short-ckt MVA

// For case (c)
sc_MVA3 = 1000 ; // short-ckt MVA

// CALCULATIONS
nom_kV = sqrt(3) * E_LN ; // Nominal kV_L-L
I_1ph = sqrt(2/3) * I_d ; // rms value of wye-side phase current
E_LN1 = E_LN * 10^3 ; // Wye-side rating in kV
X_B = (E_LN1/I_1ph) ; // Associated reactance base in Ω

// For case (a)
X_sys1 = nom_kV^2/sc_MVA1 ; // system reactance in Ω
X_tra = X_tr * X_B ; // Reactance of rectifier transformer
X_C = X_sys1 + X_tra ; // Commutating reactance in Ω

// For case (b)
X_sys2 = nom_kV^2/sc_MVA2 ; // system reactance in Ω
X_C2 = X_sys2 + X_tra ; // Commutating reactance in Ω

// For case (b) When breaker 1 & 2 are open
X_sys3 = nom_kV^2/sc_MVA3 ; // system reactance in Ω
X_C3 = X_sys3 + X_tra ; // Commutating reactance in Ω

// DISPLAY RESULTS
disp("EXAMPLE : 6.4 : SOLUTION :-") ;
printf("\n (a) Commutating reactance When all three breakers are closed, X_C = %.4f Ω \n",X_C) ; 
printf("\n (b) Commutating reactance When breaker 1 is open, X_C = %.4f Ω \n",X_C2) ;
printf("\n (c) Commutating reactance When breakers 1 and 2 are open, X_C = %.4f Ω \n",X_C3) ;
