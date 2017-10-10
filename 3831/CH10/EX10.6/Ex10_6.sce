// Example 10_6
clc;funcprot(0);
// Given data
T_w=50.0+459.67;// R
V_w=3.00;// ft
Z_w=4.00;// ft
T_0=70.0+459.67;// R
p_0=14.7;// psia
c_w=1.00;// Btu/lbm
g=32.174;// ft/s^2
g_c=32.174;// lbm.ft/lbf.s^2

// Calculation
v_w=0.01602;// ft^3/lbm
p_sat=0.1780;// lbf/in^2
p_w=p_0-p_sat;// lbf/in^2
a_f=(c_w*(T_w-T_0))+(v_w*(p_w-p_0)*(144/778.16))-(c_w*T_0*log(T_w/T_0))+((V_w^2)/(2*g_c*778.16))+((g*Z_w)/(g_c*778.16));// Btu/lbm
printf("\nThe specific flow availability at the exit of a garden hose,a_f=%0.3f Btu/lbm",a_f);
