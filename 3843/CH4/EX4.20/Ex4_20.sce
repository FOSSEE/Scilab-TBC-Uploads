// Example 4_20
clc;funcprot(0);
// Given data
V=20;// The volume of the air tank in m^3
P_i=10;// The initial pressure in MPa
T_i=25+273;// K
R=287;// J/kg.K
P_f=200;// The final pressure in kPa
k=1.4;// The specific heat ratio

// Calculation
m_i=(P_i*10^6*V)/(R*T_i);// The initial mass of air in kg
m_f=m_i*((P_f*10^3)/(P_i*10^6))^(1/k);// The final mass of air in kg
T_f=T_i*(m_f/m_i)^(k-1);// The final temperature of air in K
printf("\nThe mass of air remaining in the tank,m_f=%4.1f kg \nThe final temperature of air in the tank,T_f=%2.2f K or %3.1f°C",m_f,T_f,T_f-273);
