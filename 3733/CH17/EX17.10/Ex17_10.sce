// Example 17_10
clc;funcprot(0);
//Given data
x=0.9;// Dryness fraction
T_wi=15;//Cooling water inlet temperature °C
R_air=287;// Nm/kg.K
R_steam=462.8;// Nm/kg.K
p_v=61.3;// cm of Hg
p_b=76;// cm of Hg
// p_a=0.3*p_t(given)
C_pw=4.2;// kJ/kg°C


// Calculation
p_t=(p_b-p_v)*0.01359;// bar
p_a=0.3*p_t;// bar
p_s=p_t-p_a;// bar
// From steam tables,Saturation temperature of steam at 0.14 bar
T_s=52;// °C
T_m=T_s;// Mixture temperature coming out of condenser in °C
// From steam tables,At steam pressure of 0.14 bar,
h_f1=218.4;// kJ/kg
h_fg1=2381.4;// kJ/kg
// m=m_w/m_s;
T_wo=T_s;// °C
m=((h_f1+(x*h_fg1))-(C_pw*T_s))/(C_pw*(T_wo-T_wi));
printf('\n(a)Mixture temperature coming out of condenser=%0.0f°C \n(b)Minimum quantity of cooling water required per kg of steam=%0.1f kg',T_m,m);
