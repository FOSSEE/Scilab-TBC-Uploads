// Example 10_3
clc;funcprot(0);
// Given data
L_p=100;// Length in m
L_m=2;// The model length in m
v_m=5*10^-2;// Displaced volume in m^3
A_wm=0.9*1;// Wetted area in m^2
rho_m=1*10^3;// kg/m^3
V_m=1.1;// m/s
D_m=2.66;// The drag force in N
rho_p=1.03*10^3;// kg/m^3
SR=1/50;
nu=1*10^-6;// m^2/s

// Calculation
// (a)
V_p=V_m/(sqrt(SR));
V_pn=V_p*(3600/(1.852*10^3));// naut.mi/h
// (b)
Re_Lm=(V_m*L_m)/nu;// Reynolds number
C_Dm=0.455/(log10(Re_Lm))^2.58;// The drag coefficient
D_fm=((1/2)*rho_m*V_m^2*A_wm)*C_Dm;// Drag force in N
D_wm=D_m-D_fm;// N
D_wp=D_wm*(rho_p/rho_m)*(1/SR)^3;// N
A_wp=A_wm*(1/SR)^2;// m^2
Re_Lp=(V_p*L_p)/nu;// Reynolds number
C_Dp=0.455/(log10(Re_Lp))^2.58;// The drag coefficient
D_fp=((1/2)*rho_p*V_p^2*A_wp)*C_Dp;// Drag force in N
D_p=D_wp+D_fp;// Drag force in N
// (c)
P_p=(D_p*V_p)/10^6;// The power in kW
printf("\n(a)The corresponding speed V_p=%2.2f naut.mi/h \n(b)The drag force V_p in ocean water,D_p=%1.3e N \n(c)The propulsive power,P=%1.3f MW",V_pn,D_p,P_p);
