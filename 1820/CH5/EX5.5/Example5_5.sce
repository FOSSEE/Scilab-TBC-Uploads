// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.5 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
C_a = 0.45 * 10^-6 ; // Capacitance b/w two conductors in F/mi
l = 4 ; // length of cable in mi
f = 60 ; // Freq in Hz
V_L_L = 13.8 * 10^3 ; // Line-to-line voltage in V
pf = 0.85 ; // lagging power factor
I = 30 ; // Current drawn by load at receiving end in A

// CALCULATIONS
// For case (a)
C_a1 = C_a * l ; // Capacitance for total cable length in F
C_N = 2 * C_a1 ; // capacitance of each conductor to neutral in F
V_L_N = V_L_L/sqrt(3) ; // Line-to-neutral voltage in V
I_c = 2 * %pi * f * C_N * (V_L_N) ; // Charging current in A
I_c1 = %i * I_c ; // polar form of Charging current in A

// For case (b)
phi_r = acosd(pf) ; // pf angle
I_r = I * ( cosd(phi_r) - sind(phi_r) * %i ) ; // Receiving end current in A
I_s = I_r + I_c1 ; // sending end current in A

// For case (c)
pf_s = cosd( atand( imag(I_s),real(I_s) ) ) ; // Lagging pf of sending-end

// DISPLAY RESULTS
disp("EXAMPLE : 5.5 : SOLUTION :-") ;
printf("\n (a) Charging current of feeder , I_c = %.2f A \n",I_c) ;
printf("\n     Charging current of feeder in complex form  , I_c = i*%.2f A \n",imag(I_c1)) ;
printf("\n (b) Sending-end current , I_s = %.2f<%.2f A\n",abs(I_s),atand( imag(I_s),real(I_s) )) ;
printf("\n (c) Sending-end power factor ,cos Φ_s = %.2f  Lagging power factor \n",pf_s) ;
