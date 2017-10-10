// Example 32_38
clc;funcprot(0);
//Given data
L_cap=100;// MW
H=50;// m
// n=0.91*(L)^0.49;(given)
L_a1=60;// Load in MW
L_a2=30;// Load in MW
T_a1=16;// Time in hours
T_a2=8;// Time in hours
L_b1=100;// Load in MW
L_b2=33.33;// Load in MW
T_b1=6;// Time in hours
T_b2=18;// Time in hours
g=9.81;// m/s^2

// Calculation
// Consider the Consumer A
t_a1=T_a1*3600;// sec
P_a1=L_a1*10^6;// Watts
n_a1=0.91*(L_a1/L_cap)^0.49;// Efficiency
m_wa1=(P_a1/(n_a1*g*H));// Mass of water in liters/sec
V_wa1=(m_wa1/1000)*t_a1;// Volume of water supllied in m^3
t_a2=T_a2*3600;// sec
P_a2=L_a2*10^6;// Watts
n_a2=0.91*(L_a2/L_cap)^0.49;// Efficiency
m_wa2=(P_a2/(n_a2*g*H));// Mass of water in liters/sec
V_wa2=(m_wa2/1000)*t_a2;// Volume of water supllied in m^3
V_wta=V_wa1+V_wa2;// Total water supplied to the power plant in m^/day
// Consider the Consumer B
t_b1=T_b1*3600;// sec
P_b1=L_b1*10^6;// Watts
n_b1=0.91*(L_b1/L_cap)^0.49;// Efficiency
m_wb1=(P_b1/(n_b1*g*H));// Mass of water in liters/sec
V_wb1=(m_wb1/1000)*t_b1;// Volume of water supllied in m^3
t_b2=T_b2*3600;// sec
P_b2=L_b2*10^6;// Watts
n_b2=0.91*(L_b2/L_cap)^0.49;// Efficiency
m_wb2=(P_b2/(n_b2*g*H));// Mass of water in liters/sec
V_wb2=(m_wb2/1000)*t_b2;// Volume of water supllied in m^3
V_wtb=V_wb1+V_wb2;// Total volume of water supplied in m^3
E_tA=(L_a1*T_a1)+(L_a2*T_a2);// Total energy generated in MWh
Uw1=V_wta/24;// m^3/hr
W_a=Uw1/E_tA;// m^3/ MW
E_tB=(L_b1*T_b1)+(L_b2*T_b2);// Total energy generated in MWh
Uw2=V_wtb/24;// m^3/hr
W_b=Uw2/E_tB;// m^3/ MW
printf('\nWater used by A=%0.0f m^3/MW \nWater used by B=%0.1f m^3/MW',W_a,W_b)
// The answer provided in the textbook is wrong
