// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 6 : DIRECT-CURRENT POWER TRANSMISSION

// EXAMPLE : 6.6 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
I_d = 1600 ; // Max continuous dc current in A
V_d0 = 125 * 10^3 ; // voltage rating of bridge rectifier in V
V_d = 100 * 10^3 ; // dc voltage of rectifier in V
X_C = 6.2292017 ; // commutating reactance when all 3 breakers are closed

// CALCULATIONS
// For case (a)
R_C = (3/%pi) * X_C ;
cos_alpha = (V_d + R_C*I_d)/V_d0 ; // Firing angle α
alpha = acosd(cos_alpha) ;

// For case (b)
// V_d = (1/2)*V_d0*(cos_alpha + cos_delta)
cos_delta = (2 * V_d/V_d0) - cos_alpha ;
delta = acosd(cos_delta) ;
u = delta - alpha ; // Overlap angle u in degree

// For case (c)
cos_theta = V_d/V_d0 ; // power factor
theta = acosd(cos_theta) ;

// For case (d)
Q_r = V_d * I_d * tand(theta) ; // magnetizing var I/P

// DISPLAY RESULTS
disp("EXAMPLE : 6.6 : SOLUTION :-") ;
printf("\n (a) Firing angle α of rectifier, α = %.2f degree\n",alpha) ;
printf("\n (b) Overlap angle u of rectifier, u = %.2f degree\n",u) ;
printf("\n (c) Power factor , cosθ = %.2f  \n",cos_theta) ;
printf("\n     and   θ = %.2f degree \n ",theta) ;
printf("\n (d) Magnetizing var input , Q_r = %.2e var \n",Q_r) ;
