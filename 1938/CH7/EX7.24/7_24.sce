clc,clear
printf('Example 7.24\n\n')

R_a=0.8,X_s=5
Z_s=complex(R_a,X_s) //armature resistance and syncronous reactance
theta=(%pi/180)*phasemag(Z_s) //synchronous impedance
alpha=(%pi/2) - theta
V_t=3300/sqrt(3)
P_e_in=800/(3) //per phase
phi=acos(0.8)  //leading
Q_e_in=-P_e_in*tan(phi)

// Using the following equation
// P_e_in= V_t^2*R_a/(abs(Z_s))^2   +   V_t*E_b*sin(delta-alpha)/abs(Z_S)
// Q_e_in= V_t^2*X_s/(abs(Z_s))^2   -   V_t*E_b*cos(delta-alpha)/abs(Z_S)
E_b_sin_delta_minus_9 = 407.2
E_b_cos_delta_minus_9 =2413.6
//solving further
delta = ( atand(E_b_sin_delta_minus_9/E_b_cos_delta_minus_9 ) + 9)
E_b=E_b_sin_delta_minus_9/sind(delta-9)

P_e_in_new = 1200*10^3/3
// Using the following equation again
// P_e_in= V_t^2*R_a/(abs(Z_s))^2   +   V_t*E_b*sin(delta-alpha)/abs(Z_S)
// Q_e_in= V_t^2*X_s/(abs(Z_s))^2   -   V_t*E_b*cos(delta-alpha)/abs(Z_S)

alpha =delta - asind(   (P_e_in_new - V_t^2*R_a/(abs(Z_s))^2 ) / (V_t*E_b/abs(Z_s))   )
Q_e_in_new= V_t^2*X_s/(abs(Z_s))^2   -   V_t*E_b*cosd(delta - alpha)/abs(Z_s)

pf=cos ( atan(abs(Q_e_in_new/P_e_in_new)))
printf('New power factor is %.2f leading ',pf)
