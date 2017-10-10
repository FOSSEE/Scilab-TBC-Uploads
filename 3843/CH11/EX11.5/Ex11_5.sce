// Example 11_5
clc;funcprot(0);
// Given data
T=25;// °C
P=100;// kPa
V=150;// m^3
phi=60/100;// The relative humidity at state 1
P_g=3.169;// kPa
M_v=18;// kg/k.mol
M_a=28.97;// kg/k.mol
R_a=0.287;// kJ/kg.K

// Calculation
// (a)
P_v=P_g*phi;// kPa
P_a=P-P_v;// The partial pressure of air in kPa
w=0.622*(P_v/P_a);// The humidity ratio in kg H2O/kg dry air
// (b)
// From psychrometric chart
T_dp=16.6;// The dew point temperature in °C
// (c)
m_v=w*((P_a*V)/(R_a*(T+273)));// The mass of water vapor in kg
// (d)
N_v=m_v/M_v;// mol
N_a=((P_a*V)/(R_a*(T+273)))/M_a;// mol
y_v=N_v/(N_a+N_v);// The mole fraction of the water vapor 
printf("\n(a)The humidity ratio,w=%0.5f kg H2O/kg dry air \n(b)The dew point temperature,T_dp=%2.1f°C \n(c)The mass of water vapor,m_v=%1.2f kg \n(d)The mole fraction of the water vapor,y=%0.4f",w,T_dp,m_v,y_v);
