// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 6 : DIRECT-CURRENT POWER TRANSMISSION

// EXAMPLE : 6.10 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
X_C = 6.2292 ; // commutating reactance when all 3 breakers are closed
I_db = 1600 ; // dc current base in A
V_db = 125 * 10^3 ; // dc voltage base in V
I_d = I_db ; // Max continuous current in A
V_d = 100 * 10^3 ; // dc voltage in V
alpha = 0 ; // Firing angle α = 0 degree

// CALCULATIONS
// For case (a)
R_c = (3/%pi) * X_C ;
R_cb = V_db/I_db ; // Resistance base in Ω
V_d_pu = V_d/V_db ; // per unit voltage
I_d_pu = I_d/I_db ; // per unit current
R_c_pu = R_c/R_cb ; // per unit Ω
E_pu = (V_d_pu + R_c_pu * I_d_pu)/cosd(alpha) ; // Open ckt dc voltage in pu
V_d0 = E_pu * V_db ; // Open ckt dc voltage in V

// For case (b)
E = V_d0/2.34; // Open ckt ac voltage on wye side of transformer in V               

// For case (c)
E_1LN = 92.95 * 10^3 ; // voltage in V
E_1B = E_1LN ;
E_LN = 53.44 * 10^3 ; // voltage in V
a = E_1LN/E_LN ;
n = a ; // when LTC on neutral
X_c_pu = 2 * R_c_pu ;
E_1_pu = E_1LN / E_1B ; // per unit voltage
cos_delta = cosd(alpha) - ( (X_c_pu * I_d_pu)/( (a/n) *E_1_pu) ) ;
delta = acosd(cos_delta) ;
u = delta - alpha ; 

// For case (d)
cos_theta = V_d/V_d0 ; // pf of rectifier
theta = acosd(cos_theta) ;

// For case (e)
Q_r = V_d*I_d*tand(theta) ; // magnetizing var I/P

// For case (f)
d_V = E_LN - E ; // necessary change in voltage in V
p_E_LN = 0.00625 * E_LN ; // one buck step can change in V/step
no_buck = d_V / p_E_LN ; // No. of steps of buck

// DISPLAY RESULTS
disp("EXAMPLE : 6.10 : SOLUTION :-") ;
printf("\n (a) Open circuit dc Voltage , V_d0 = %.2f V \n",V_d0);
printf("\n (b) Open circuit ac voltage on wye side of transformer , E = %.2f V \n",E);
printf("\n (c) Overlap angle , u = %.2f degree \n",u)
printf("\n (d) Power factor , cosθ = %.3f  \n",cos_theta);
printf("\n     and   θ = %.2f degree \n ",theta);
printf("\n (e) Magnetizing var input to rectifier , Q_r = %.4e var \n",Q_r);
printf("\n (f) Number of 0.625 percent steps of buck required , No. of buck = %.f steps \n",no_buck);
