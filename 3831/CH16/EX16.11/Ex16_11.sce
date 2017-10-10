// Example 16_11
clc;funcprot(0);
// Given data
M_x=5.50;// The Mach number
p_x=14.7;// lbf/in^2
T_x=70.0+459.67;// °F
k=1.4;// The specific heat ratio
R=53.34;// ft.lbf/lbm.R
g_c=32.174;// lbm.ft/lbf.s^2

// Calculation
M_y=((((k-1)*M_x^2)+2)/((2*k*M_x^2)+1-k))^(1/2);// The Mach number
T_y=T_x*[(1+(((k-1)/2)*M_x^2))/(1+(((k-1)/2)*M_y^2))];// R
p_y=p_x*(M_x/M_y)*(T_y/T_x)^(1/2);// lbf/in^2
V_wind=(M_x*sqrt(k*g_c*R*T_x))-(M_y*sqrt(k*g_c*R*T_y));// ft/s
printf("\nThe pressure directly behind the shock wave,p_y=%3.0f lbf/in^2 \nThe temperature directly behind the shock wave,T_y=%4.0f R \nThe wind velocity directly behind the shock wave,V_wind=%1.0e ft/s",p_y,T_y,V_wind);
