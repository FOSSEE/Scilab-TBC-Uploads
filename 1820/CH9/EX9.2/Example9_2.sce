// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.2 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
V_abc = [0 ; 50 ; -50] ; // Phase voltages of a 3-Φ system in V
I_abc = [-5 ; 5*%i ; -5] ; // Phase current of a 3-Φ system in A

// CALCULATIONS
// For case (a)
S_3ph = (V_abc)' * conj(I_abc) ; // 3-Φ complex power in VA

// For case (b)
a = 1*exp(%i*120*%pi/180) ; // By symmetrical components theory to 3-Φ system
A = [1 1 1; 1 a^2 a ;1 a a^2] ;
V_012 = inv(A) * (V_abc) ; // Sequence voltage matrices in V
I_012 = inv(A) * (I_abc) ; // Sequence current matrices in A

// For case (c)
S_3ph1 = 3 * ([V_012(1,1) V_012(2,1) V_012(3,1)]) * (conj(I_012)) ; // Three-phase complex power in VA . Refer equ 9.34(a)

// DISPLAY RESULTS
disp("EXAMPLE : 9.2 : SOLUTION :-") ;
printf("\n (a) Three-phase complex power using equ 9.30 , S_3-Φ = %.4f<%.f VA \n",abs(S_3ph) , atand(imag(S_3ph),real(S_3ph) )) ;
printf("\n (b) Sequence Voltage matrices , [V_012] =  V \n") ;
printf("\n     %.f<%.f ",abs(V_012(1,1)),atand( imag(V_012(1,1)),real(V_012(1,1)) )) ;
printf("\n     %.4f<%.f ",abs(V_012(2,1)),atand( imag(V_012(2,1)),real(V_012(2,1)) )) ;
printf("\n     %.4f<%.f ",abs(V_012(3,1)),atand( imag(V_012(3,1)),real(V_012(3,1)) )) ;
printf("\n \n    Sequence current matrices , [I_012] = A \n") ;
printf("\n     %.4f<%.1f ",abs(I_012(1,1)),atand( imag(I_012(1,1)),real(I_012(1,1)) )) ;
printf("\n     %.4f<%.f ",abs(I_012(2,1)),atand( imag(I_012(2,1)),real(I_012(2,1)) )) ;
printf("\n     %.4f<%.f ",abs(I_012(3,1)),atand( imag(I_012(3,1)),real(I_012(3,1)) )) ;
printf("\n \n (c) Three-phase complex power using equ 9.34 , S_3-Φ = %.4f<%.f VA \n",abs(S_3ph1) , atand(imag(S_3ph1),real(S_3ph1) )) ;
