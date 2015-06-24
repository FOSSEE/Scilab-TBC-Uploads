// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.12 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
Z = 2.07 + 0.661 * %i ; // Line impedance in Ω
V_L = 2.4 * 10^3 ; // Line voltage in V
p = 200 * 10^3; // Load in VA
pf = 0.866 ; // Lagging power factor

// CALCULATIONS
// for case (a)
A = 1 ;
B = Z ;
C = 0 ;
D = A ;
theta = acosd(pf) ;
S_R = p * ( cosd(theta) + %i * sind(theta) ) ; // Receiving end power in VA
I_L1 = S_R/V_L ;
I_L = conj(I_L1) ;
I_S = I_L ; // sending end current in A
I_R = I_S ; // Receiving end current in A

// for case (b)
Z_L = V_L/I_L ; // Impedance in Ω
V_R = Z_L * I_R ;
V_S = A * V_R + B * I_R ; // sending end voltage in V
P = [A B ;C D] * [V_R ; I_R] ;

// for case (c)
V_S = P(1,1) ;
I_S = P(2,1) ;
Z_in = V_S/I_S ; // Input impedance in Ω

// for case (d)
S_S = V_S * conj(I_S) ;
S_L = S_S - S_R ; // Power loss of line in VA

// DISPLAY RESULTS
disp("EXAMPLE : 4.12 : SOLUTION :-") ;
printf("\n (a) Sending-end current , I_S = %.2f<%.2f A \n",abs(I_S),atand( imag(I_S),real(I_S) )) ;
printf("\n (b) Sending-end voltage , V_S = %.2f<%.2f V \n",abs(V_S),atand( imag(V_S),real(V_S) )) ;
printf("\n (c) Input impedance , Z_in = %.2f<%.2f Ω \n",abs(Z_in),atand( imag(Z_in),real(Z_in) )) ;
printf("\n (d) Real power loss in line , S_L = %.2f W \n",real(S_L)) ;
printf("\n     Reactive power loss in line , S_L = %.2f var \n",imag(S_L)) ;
