// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
V_RL_L = 23*10^3 ; // line to line voltage in volts
z_t = 2.48+%i*6.57 ; // Total impedance in ohm/phase
p = 9*10^6 ; // load in watts
pf = 0.85 ; // lagging power factor

// CALCULATIONS
// METHOD I : USING COMPLEX ALGEBRA

V_RL_N = (V_RL_L)/sqrt(3) ; // line-to-neutral reference voltage in V
I = (p/(sqrt(3)*V_RL_L*pf))*( pf - %i*sind(acosd(pf))) ; // Line current in amperes
IZ = I*z_t ;
V_SL_N = V_RL_N + IZ // Line to neutral voltage at sending end in volts
V_SL_L = sqrt(3)*V_SL_N ; // Line to line voltage at sending end in volts

// DISPLAY RESULTS
disp("EXAMPLE : 4.1 : SOLUTION :-") ;
disp("METHOD I : USING COMPLEX ALGEBRA") ; 
printf("\n (a) Line-to-neutral voltage at sending end , V_SL_N = %.f<%.1f V \n",abs(V_SL_N),atand( imag(V_SL_N),real(V_SL_N) )) ;
printf("\n i.e Line-to-neutral voltage at sending end , V_SL_N = %.f V \n",abs(V_SL_N)) ;
printf("\n     Line-to-line voltage at sending end , V_SL_L = %.f<%.1f V \n",abs(V_SL_L),atand( imag(V_SL_L),real(V_SL_L) )) ;
printf("\n i.e Line-to-line voltage at sending end , V_SL_L = %.f V \n",abs(V_SL_L)) ;
printf("\n (b) load angle , δ = %.1f degree \n",atand( imag(V_SL_L),real(V_SL_L) )) ;
printf("\n") ;


// CALCULATIONS
// METHOD II : USING THE CURRENT AS REFERENCE PHASOR
theta_R = acosd(pf) ; 
V1 = V_RL_N*cosd(theta_R) + abs(I)*real(z_t) ; // unit is volts
V2 = V_RL_N*sind(theta_R) + abs(I)*imag(z_t) ; // unit is volts
V_SL_N2 = sqrt( (V1^2) + (V2^2) ) ; // Line to neutral voltage at sending end in volts/phase
V_SL_L2 = sqrt(3) * V_SL_N2 ; // Line to line voltage at sending end in volts
theta_s = atand(V2/V1) ; 
delta = theta_s - theta_R ; 

// DISPLAY RESULTS
disp("METHOD II : USING THE CURRENT AS REFERENCE PHASOR");
printf("\n (a) Line-to-neutral voltage at sending end , V_SL_N = %.f V \n",V_SL_N2) ;
printf("\n     Line-to-line voltage at sending end , V_SL_L = %.f V \n",V_SL_L2) ;
printf("\n (b) load angle , δ = %.1f degree \n",delta) ;
printf("\n") ;

// CALCULATIONS
// METHOD III : USING THE RECEIVING-END VOLTAGE  AS REFERENCE PHASOR
// for case (a)
V_SL_N3 = sqrt( (V_RL_N + abs(I) * real(z_t) * cosd(theta_R) + abs(I) * imag(z_t) * sind(theta_R))^2 + (abs(I)*imag(z_t) * cosd(theta_R) - abs(I) * real(z_t) * sind(theta_R))^2) ;
V_SL_L3 = sqrt(3)*V_SL_N3 ;

// for case (b)
delta_3 = atand( (abs(I)*imag(z_t) * cosd(theta_R) - abs(I) * real(z_t) * sind(theta_R))/(V_RL_N + abs(I) * real(z_t) * cosd(theta_R) + abs(I) * imag(z_t) * sind(theta_R)) ) ;

// DISPLAY RESULTS
disp("METHOD III : USING THE RECEIVING END VOLTAGE  AS REFERENCE PHASOR") ;
printf("\n (a) Line-to-neutral voltage at sending end , V_SL_N = %.f V \n",V_SL_N3) ;
printf("\n     Line-to-line voltage at sending end , V_SL_L = %.f V \n",V_SL_L3) ;
printf("\n (b) load angle , δ = %.1f degree \n",delta_3) ;
printf("\n") ;

// CALCULATIONS
// METHOD IV : USING POWER RELATIONSHIPS
P_4 = 9 ; // load in MW (Given)
P_loss = 3 * (abs(I))^2 * real(z_t) * 10^-6 ; // Power loss in line in MW
P_T = P_4 + P_loss ; // Total input power to line in MW
Q_loss = 3 * (abs(I))^2 * imag(z_t) * 10^-6 ; // Var loss of line in Mvar lagging
Q_T = ( (P_4*sind(theta_R))/cosd(theta_R) ) + Q_loss ; // Total megavar input to line in Mvar lagging
S_T = sqrt( (P_T^2)+(Q_T^2) ) ; // Total megavoltampere input to line
// for case (a)
V_SL_L4 = S_T*10^6/(sqrt(3) * abs(I)) ; // line to line voltage in volts
V_SL_N4 = V_SL_L4/sqrt(3) ; // Line to line neutral in volts

// for case (b)
theta_S4 = acosd(P_T/S_T) ; // Lagging
delta_4 = theta_s - theta_R ; 

// DISPLAY RESULTS
disp("METHOD IV : USING POWER RELATIONSHIPS");
printf("\n (a) Line-to-neutral voltage at sending end , V_SL_N = %.f V \n",V_SL_N4) ;
printf("\n (a) Line-to-line voltage at sending end , V_SL_L = %.f V \n",V_SL_L4) ;
printf("\n (b) load angle , δ = %.1f degree \n",delta_4) ;
printf("\n");

// CALCULATIONS
// METHOD V : Treating 3-Φ line as 1-Φ line having having V_S and V_R represent line-to-line voltages not line-to-neutral voltages
// for case (a)
I_line = (p/2)/(V_RL_L * pf) ; // Power delivered is 4.5 MW
R_loop = 2*real(z_t) ;
X_loop = 2*imag(z_t) ;
V_SL_L5 = sqrt( (V_RL_L * cosd(theta_R) + I_line*R_loop)^2 + (V_RL_L * sind(theta_R) + I_line * X_loop)^2) ; // line to line voltage in V
V_SL_N5 = V_SL_L5/sqrt(3) ; // line to neutral voltage in V

// for case (b)
theta_S5 = atand((V_RL_L * sind(theta_R) + I_line * X_loop)/(V_RL_L * cosd(theta_R) + I_line*R_loop)) ;
delta_5 = theta_S5 - theta_R ;

// DISPLAY RESULTS
disp("METHOD V : TREATING 3-Φ LINE AS 1-Φ LINE") ;
printf("\n (a) Line to neutral voltage at sending end , V_SL_N = %.f V \n",V_SL_N5) ;
printf("\n (a) Line to line voltage at sending end , V_SL_L = %.f V \n",V_SL_L5) ;
printf("\n (b) load angle , δ = %.1f degree \n",delta_5) ;
printf("\n") ;

printf("\n NOTE : ERROR : Change in answer because root(3) = 1.73 is considered in Textbook ") ;
printf("\n But here sqrt(3) = 1.7320508 is considered \n") ;
