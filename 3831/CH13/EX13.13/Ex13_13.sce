// Example 13_13
clc;funcprot(0);
// Given data
V_inlet=0;// ft/s
V_exh=1560;// ft/s
m_exh=270;// lbm/s
g_c=32.174;// lbm.ft/(lbf.s^2)
p_1=190;// psia
T_1=2060;// R
p_2s=28.0;// psia
T_2=1350;// R
p_3=14.7;// psia
T_3=520;// R
p_4s=200;// psia
T_4=1175;// R
k=1.40;// The specific heat ratio

// Calculation
// 1.The engine’s static thrust is given directly by Eq. (13.29) as
T=m_exh*(V_exh-V_inlet)/g_c;// lbf
// 2a.
T_4s=T_3*((p_4s/p_3)^((k-1)/k));// °F
n_s=((T_4s-T_3)/(T_4-T_3))*100;// The compressor’s isentropic efficiency in %
T_2s=T_1*(p_2s/p_1)^((k-1)/k);// R
n_s_pm=((T_1-T_2)/(T_1-T_2s))*100;// %
// 3a.
n_T_Bc=((T_1-T_2s-(T_4s-T_3))/(T_1-T_4s))*100;// The Brayton cold ASC thermal efficiency in %
n_T_B=((T_1-T_2-(T_4-T_3))/(T_1-T_4))*100;// The actual thermal efficiency of the engine in %
// 2b.
// By using Table C.16a in Thermodynamic Tables to accompany Modern Engineering Thermodynamics
p_r4=1.2147*(p_4s/p_3);
T_4s=1084;// R
T_4sF=624;// °F
n_s_c=((T_4s-T_3)/(T_4-T_3))*100;// %
p_r1=196.16;
p_r2=p_r1*(p_2s/p_1);
// By interpolation in Table C.16a,
T_2s=1261-460;// °F 
T_2s=1261;// R
n_s_pm2=((T_1-T_2)/(T_1-T_2s))*100;// %
// 3b.
// From Table C.16a,
h_3=124;// Btu/lbm 
h_4s=262;// Btu/lbm
h_1=521;// Btu/lbm
h_2s=307;// Btu/lbm
h_4=284.09;// Btu/lbm
h_2=329.9;// Btu/lbm
n_T_Bh=((h_1-h_2s-(h_4s-h_3))/(h_1-h_4s))*100;// %
n_T_B2=((h_1-h_2-(h_4-h_3))/(h_1-h_4))*100;// %
// 3c.
n_T_max=(1-sqrt(T_3/T_1))*100;// The maximum work Brayton cold ASC thermal efficiency in %
printf("\n(1)The engine’s static thrust is given directly,T=%5.0f lbf \n(2)(a)The compressor and turbine isentropic efficiencies for the Brayton cold air standard cycle,(n_s)_compressor=%2.1f percentage & (n_s)_pm=%2.1f percentage \n   (b)The compressor and turbine isentropic efficiencies for the Brayton hot air standard cycle using the gas tables for air,(n_T)_Brayton hot ASC=%2.1f percentage & (n_T)_Brayton actual=%2.1f percentage \n(3)(a)The ASC and actual thermal efficiencies for the Brayton cold air standard cycle,(n_T)_Brayton cold ASC =%2.1f percentage & (n_T)__Brayton actual=%1.1f percentage \n   (b)The Brayton hot air standard cycle using the gas tables for air,(n_T)_Brayton hot ASC =%2.1f percentage & (n_T)__Brayton actual=%1.1f percentage \n   (c)The maximum work Brayton cold ASC thermal efficiency,(n_T)_max work=%2.1f percentage",T,n_s,n_s_pm,n_s_c,n_s_pm2,n_T_Bc,n_T_B,n_T_Bh,n_T_B2,n_T_max);
// The answer provided in the text book is wrong
