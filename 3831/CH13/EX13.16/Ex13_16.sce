// Example 13_16
clc;funcprot(0);
// Given data
v=3.50;// liter
p_5=200;// kPa
T_5=313;// K
k=1.35;// The specific heat ratio
HV=43300;// kJ/kg
AF=15/1;// Air fuel ratio
CR=8.00/1;// The comprssion ratio
ER=10.0/1;// An expansion ratio
R=0.287;// kJ/kg.K
C_v_air=1;// kJ/kg.K

// Calculation
V_d=v/4;// L
V_d=V_d*10^-3;// m^3
V_c=V_d/(ER-1);// m^3
V_1=V_c;// m^3
V_7s=V_1;// m^3
V_4=V_7s;// m^3
V_6s=V_d+V_c;// m^3
V_2s=V_6s;// m^3
V_3=V_2s;// m^3
V_5=V_7s*CR;// m^3
p_6s=p_5*(V_5/V_6s)^k;// kPa
T_6s=T_5*(V_5/V_6s)^(k-1);// K
p_7s=p_5*(CR)^k;// kPa
T_7s=T_5*(CR)^(k-1);// K
m_air=(p_6s*V_6s)/(R*T_6s);// kg
m_fuel=m_air/(AF+1);// kg
Q_comb=m_fuel*HV;// kJ
T_1=(Q_comb/(m_air*C_v_air))+T_7s;// K
p_1=(p_7s/10^3)*(T_1/T_7s);// MPa
p_2s=p_1*10^3*(V_1/V_2s)^k;// MPa
T_2s=T_1*(V_1/V_2s)^(k-1);// K
p_3=101;// kPa
p_exhaust=p_3;// kPa
T_3=T_2s*(p_3/p_2s);// K
p_4=p_3;// kPa
printf("\nThe temperature and pressure at all points of the cycle are given below \nState 5:p_5=%3.0f kPa,T_5=%3.0f K \nState 6:p_6s=%3.0f kPa,T_6s=%3.0f K \nState7s:p_7s=%4.0f kPa,T_7s=%3.0f K \nState 1:p_1=%2.2f MPa,T_1=%4.0f K\nState2s:p_2s=%3.0f kPa,T_2s=%4.0f K \nState 3:p_3=%3.0f kPa,T_3=%3.0f K \nState 4:p_4=%3.0f kPa,T_4=atmospheric temperature",p_5,T_5,p_6s,T_6s,p_7s,T_7s,p_1,T_1,p_2s,T_2s,p_3,T_3,p_3);
// The answer provided in the textbook is wrong
