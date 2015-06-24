// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 6 : DIRECT-CURRENT POWER TRANSMISSION

// EXAMPLE : 6.5 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
X_C = 6.2292017 ; // commutating reactance when all 3 breakers are closed
E_LN = 53.418803 * 10^3 ; // Wye-side volt rating
V_d0 = 125 * 10^3 ; // voltage rating of bridge rectifier in V
V_dr0 = V_d0 ; // Max continuos no-load direct voltage in V
I = 1600 ; // current rating of bridge rectifier in A
I_d = I ; // Max continuous current
nom_kV = sqrt(3) * E_LN ; // Nominal kV_L-L
X_tr = 0.10 ; //impedance of rectifier transformer in pu Ω
alpha = 0 ; // delay angle α = 0 degree

// CALCULATIONS
// For case (a)
E_m = sqrt(2) * E_LN ;
u = acosd(1 - (2*X_C*I_d)/(sqrt(3)*E_m)); // overlap angle when delay angle α = 0 degree

// For case (b)
R_C = (3/%pi) * X_C ; // Equ commutation resistance per phase
V_d = V_d0 * cosd(alpha) - R_C * I_d ; // dc voltage of rectifier in V

// For case (c)
cos_theta = V_d/V_d0 ; // Displacement or power factor of rectifier

// For case (d)
Q_r = V_d * I_d * tand( acosd(cos_theta) ) ; // magnetizing var I/P

// DISPLAY RESULTS
disp("EXAMPLE : 6.5 : SOLUTION :-") ;
printf("\n (a) Overlap angle u of rectifier, u = %.2f degree\n",u) ;
printf("\n (b) The dc voltage V_dr of rectifier, V_dr = %.2f V \n",V_d) ;
printf("\n (c) Displacement factor of rectifier, cosθ = %.3f  \n",cos_theta) ;
printf("\n     and   θ = %.1f degree \n ",acosd(cos_theta)) ;
printf("\n (d) Magnetizing var input to rectifier, Q_r = %.4e var \n",Q_r) ;

printf("\n NOTE : In case(d) 7.6546e+07 var is same as 7.6546*10^7 var = 76.546 Mvar \n") ;
