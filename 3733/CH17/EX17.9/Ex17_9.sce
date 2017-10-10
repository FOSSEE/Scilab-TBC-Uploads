// Example 17_9
clc;funcprot(0);
//Given data
P=12500;// Steam turbine capacity in kW
M_a=1/1000;//kg per kg of steam
M_s=5;// kg/hr/kW
p_v=70;// cm of Hg
p_b=76;// cm of Hg
T_s=30;// The temperature at the suction of the air pump in °C
gradT=8;// Rise in temperature of the water in °C
x_1=0.9;// Dryness fraction
R=287;// J/kg k
C_pw=4.2;// kJ/kg.°C

//Calculation
//From Steam tables, At 30°C
p_s=0.04325;// Partial pressure of steam in bar
v_s=32.8;// Specific volume of steam in m^3/kg
h_fg1=2438;// kJ/kg
//(a)
p_t=((p_b-p_v)/p_b*1.013);//bar
p_a=p_t-p_s;//Partial pressure of air in bar
m_a=P*M_s*M_a*(1/60);//Air leakage into the condenser in  kg/min
V=(m_a*R*(T_s+273))/(p_a*10^5);//Volume of air in m^3/min

//(b)
m_s=(V*60)/v_s;//The mass of water vapour carried with air in kg/hr

//(c)
m_s1=(P*M_s)/60;// kg/min
m_w=((m_s1*x_1*h_fg1)/(C_pw*gradT*1000));// tons/min
printf('\n(a)Capacity of air pump=%0.1f m^3/min\n(b)The mass of water vapour carried with air=%0.2f kg/hr\n(c)The quantity of cooling water required per minute=%0.1f tons/min',V,m_s,m_w);
// The answer provided in the textbook is wrong

