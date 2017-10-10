// Example 10_3
clc;funcprot(0);
// Given data
T_1=50.0;// °F
V_1=500;// mph
Z=30.0*10^3;// ft
T_0=70.0;// °F
p_0=136.12;// psia
m=5.00;// lbm
g=32.174;// ft/s^2
g_c=32.174;// lbm.ft/lbf.s^2

// Calculation
// State 1 (flying)
x_1=0.00;// The quality of steam
T_1=50.0;// °F
v_1=0.0128;// ft^3/lbm
u_1=24.04;// Btu/lbm
s_1=0.0519;// Btu/lbm.R
V_1=500;// mph
Z_1=30000;// ft
// State 2 (landed)
p_2=100;// psia
T_2=400;// °F
v_2=1.046;// ft^3/lbm
u_2=154.77;// Btu/lbm
s_2=0.31464;// Btu/lbm.R
V_2=0;// mph
Z_2=0;// ft
// Ground state
x_0=0.00;// The quality of steam
T_0=70.0;// °F
v_0=0.01325;// ft^3/lbm
u_0=29.78;// Btu/lbm
s_0=0.06296;// Btu/lbm.R
p_0=136.12;// psia
A_1=(m*[(u_1-u_0)+((p_0)*(144/778.16)*(v_1-v_0))])-(m*(T_0+459.67)*(s_1-s_0))+(m*[(([V_1*5280*(1/3600)]^2)/(2*g_c*778.16))+((g*Z_1)/(g_c*778.16))]);// Btu
A_2=(m*[(u_2-u_0)+((p_0)*(144/778.16)*(v_2-v_0))])-(m*(T_0+459.67)*(s_2-s_0))+(m*[(([V_2*5280*(1/3600)]^2)/(2*g_c*778.16))+((g*Z_2)/(g_c*778.16))]);// Btu
// (b)
dA=A_2-A_1;// Btu
printf("\n(a)The total availability of the refrigerant before and after the aircraft lands,A_1=%3.0f Btu & A_2=%2.1f Btu. \n(b)The change in total availability during the landing,A_2-A_1=%3.0f Btu",A_1,A_2,dA);
