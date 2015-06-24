// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.5 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
V = 138*10^3 ; // Transmission line voltage in V
P = 49*10^6 ; // load power in Watts
pf = 0.85 ; // lagging power factor
Z = 95 * exp(%i*78*%pi/180) ; // line constants in Ω
Y = 0.001 * exp(%i*90*%pi/180) ; // line constants in siemens

// CALCULATIONS
V_RL_N = V/sqrt(3) ;
theta_R = acosd(pf) ;
I_R = P/(sqrt(3)*V*pf) * ( cosd(theta_R) - %i*sind(theta_R) ) ; // Receiving end current in A

// for case (a)
// A,B,C,D constants for nominal-π circuit representation
A = 1 + (1/2)*Y*Z ;
B = Z ;
C = Y + (1/4)*(Y^2)*Z ;
D = 1 + (1/2)*Y*Z ;

// for case (b)
P = [A B ; C D] * [V_RL_N ; I_R] ;
V_SL_N = P(1,1) ; // Line-to-neutral Sending end voltage in V
V_SL_L = sqrt(3) * abs(V_SL_N) * exp(%i* ( atand( imag(V_SL_N),real(V_SL_N) ) + 30 )* %pi/180) ; // Line-to-line voltage in V
// NOTE that an additional 30 degree is added to the angle since line-to-line voltage is 30 degree ahead of its line-to-neutral voltage


// for case (c)
I_S = P(2,1); // Sending end current in A

// for case (d)
theta_s = atand( imag(V_SL_N),real(V_SL_N) ) - atand( imag(I_S),real(I_S) ) ;

// for case (e)
n = (sqrt(3) * V * abs(I_R) * cosd(theta_R)/(sqrt(3) * abs(I_S) * abs(V_SL_L) * cosd(theta_s) ))*100 ; // Efficiency

// DISPLAY RESULTS
disp("EXAMPLE : 4.5 : SOLUTION :-") ;
printf("\n (a) A constant of line , A = %.4f<%.1f \n",abs(A),atand( imag(A),real(A) )) ;
printf("\n     B constant of line , B = %.2f<%.1f Ω \n",abs(B),atand( imag(B),real(B) )) ;
printf("\n     C constant of line , C = %.3f<%.1f S \n",abs(C),atand( imag(C),real(C) )) ;
printf("\n     D constant of line , D = %.4f<%.1f \n",abs(D),atand( imag(D),real(D) )) ;
printf("\n (b) Sending end line-to-neutral voltage , V_SL_N = %.1f<%.1f V \n",abs(V_SL_N),atand( imag(V_SL_N),real(V_SL_N) )) ;
printf("\n     Sending end line-to-line voltage , V_SL_L = %.1f<%.1f V \n",abs(V_SL_L),atand( imag(V_SL_L),real(V_SL_L) )) ;
printf("\n (c) sending end current , I_S = %.2f<%.1f A \n",abs(I_S),atand( imag(I_S),real(I_S) )) ;
printf("\n (d) sending end power factor , cosθ_s = %.3f \n",cosd(theta_s)) ;
printf("\n (e) Efficiency of transmission , η = %.2f Percentage \n",n) ;

printf("\n NOTE : ERROR : Change in answer because root(3) = 1.73 is considered in Textbook ") ;
printf("\n But here sqrt(3) = 1.7320508 is considered \n") ;
