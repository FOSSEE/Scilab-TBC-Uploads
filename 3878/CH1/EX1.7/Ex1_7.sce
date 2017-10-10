clear
// Variable Declaration
m_N=0.906// The mass of nitrogen in a cubic metre of air in kg
R_N=297// The specific gas constant of nitrogen in J/kg K
m_O=0.278// The mass of oxygen in a cubic metre of air in kg
R_O=260// The specific gas constant of oxygen in J/kg K
m_A=0.015// The mass of argon in a cubic metre of air in kg
R_A=208// The specific gas constant of argon in J/kg K
T=273.15+20// The temperature of air in K

// Calculation
p_N=m_N*R_N*T// The pressure of nitrogen in Pa
p_O=m_O*R_O*T// The pressure of oxygen in Pa
p_A=m_A*R_A*T// The pressure of argon in Pa
p_t=p_N+p_O+p_A// The total pressure in Pa
printf("\n The total pressure is %0.0f Pa %0.5f bar",p_t,p_t/10**5)
