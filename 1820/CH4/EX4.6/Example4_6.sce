// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.6 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
V_RL_L = 138*10^3 ; // transmission line voltage in V
R = 0.1858 // Line constant in Ω/mi
f = 60 // frequency in Hertz
L = 2.60*10^-3 // Line constant in H/mi
C = 0.012*10^-6 // Line constant in F/mi
pf = 0.85 // Lagging power factor
P = 50*10^6 // load in VA
l = 150 // length of 3-Φ transmission line in mi

// CALCULATIONS
z = R + %i*2*%pi*f*L ; // Impedance per unit length in Ω/mi
y = %i*2*%pi*C*f ; // Admittance per unit length in S/mi
g = sqrt(y*z) ; // Propagation constant of line per unit length
g_l = real(g) * l + %i * imag(g) * l ; // Propagation constant of line
Z_c = sqrt(z/y) ; // Characteristic impedance of line
V_RL_N = V_RL_L/sqrt(3) ;
theta_R = acosd(pf) ; 
I_R = P/(sqrt(3)*V_RL_L)*( cosd(theta_R) - %i*sind(theta_R) ) ; // Receiving end current in A

// for case (a)
// A,B,C,D constants of line
A = cosh(g_l) ;
B = Z_c * sinh(g_l) ;
C = (1/Z_c) * sinh(g_l) ;
D = A ;

// for case (b)
P = [A B ; C D] * [V_RL_N ; I_R] ;
V_SL_N = P(1,1) ; // Line-to-neutral Sending end voltage in V
V_SL_L = sqrt(3) * abs(V_SL_N) * exp(%i* ( atand( imag(V_SL_N),real(V_SL_N) ) + 30 )* %pi/180) ; // Line-to-line voltage in V
// NOTE that an additional 30 degree is added to the angle since line-to-line voltage is 30 degree ahead of its line-to-neutral voltage

// for case (c)
I_S = P(2,1); // Sending end current in A

// for case (d)
theta_s = atand( imag(V_SL_N),real(V_SL_N) ) - atand( imag(I_S),real(I_S) ) ; // Sending-end pf

// For case (e)
P_S = sqrt(3) * abs(V_SL_L) * abs(I_S) * cosd(theta_s) ; // Sending end power

// For case (f)
P_R = sqrt(3)*abs(V_RL_L)*abs(I_R)*cosd(theta_R) ; // Receiving end power
P_L = P_S - P_R ; // Power loss in line

// For case (g)
n = (P_R/P_S)*100 ; // Transmission line efficiency

// For case (h)
reg = (( abs(V_SL_N) - V_RL_N )/V_RL_N )*100 ; // Percentage of voltage regulation

// For case (i)
Y = y * l ; // unit is S
I_C = (1/2) * Y * V_SL_N ; // Sending end charging current in A

// For case (j)
Z = z * l ;
V_RL_N0 = V_SL_N - I_C*Z ;
V_RL_L0 = sqrt(3) * abs(V_RL_N0) * exp(%i* ( atand( imag(V_RL_N0),real(V_RL_N0) ) + 30 )* %pi/180) ; // Line-to-line voltage at receiving end in V

// DISPLAY RESULTS
disp("EXAMPLE : 4.6 :SOLUTION :-") ;
printf("\n (a) A constant of line , A = %.4f<%.2f \n",abs(A),atand( imag(A),real(A) )) ;
printf("\n     B constant of line , B = %.2f<%.2f Ω \n",abs(B),atand( imag(B),real(B) )) ;
printf("\n     C constant of line , C = %.5f<%.2f S \n",abs(C),atand( imag(C),real(C) )) ;
printf("\n     D constant of line , D = %.4f<%.2f \n",abs(D),atand( imag(D),real(D) )) ;
printf("\n (b) Sending end line-to-neutral voltage , V_SL_N = %.2f<%.2f V \n",abs(V_SL_N),atand( imag(V_SL_N),real(V_SL_N) )) ;
printf("\n     Sending end line-to-line voltage , V_SL_L = %.2f<%.2f V \n",abs(V_SL_L),atand( imag(V_SL_L),real(V_SL_L) )) ;
printf("\n (c) sending-end current , I_S = %.2f<%.2f A \n",abs(I_S),atand( imag(I_S),real(I_S) )) ;
printf("\n (d) sending-end power factor , cosθ_s = %.4f \n",cosd(theta_s)) ;
printf("\n (e) sending-end power , P_S = %.5e W \n",P_S) ;
printf("\n (f) Power loss in line , P_L = %.5e W \n",P_L) ;
printf("\n (g) Transmission line Efficiency , η = %.1f Percentage\n",n) ;
printf("\n (h) Percentage of voltage regulation = %.1f Percentage \n",reg) ;
printf("\n (i) Sending-end charging current at no load , I_C = %.2f A \n",abs(I_C)) ;
printf("\n (j) Receiving-end voltage rise at no load ,V_RL_N = %.2f<%.2f V \n",abs(V_RL_N0),atand(imag(V_RL_N0),real(V_RL_N0)));
printf("\n     Line-to-line voltage at receiving end at no load ,V_RL_L = %.2f<%.2f V \n",abs(V_RL_L0),atand(imag(V_RL_L0),real(V_RL_L0)));

printf("\n NOTE : ERROR : Change in answer because root(3) = 1.73 is considered in Textbook & change in α & β values ") ;
printf("\n But here sqrt(3) = 1.7320508 is considered \n") ;
