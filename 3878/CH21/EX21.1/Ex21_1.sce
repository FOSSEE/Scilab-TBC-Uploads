clear
// Variable declaration
m_a=68// The mass flow rate of air in kg/s
T_1=16// The temperature of air at inlet in °C
T_2=34// The temperature of air at outlet in °C
T_win=85// The temperature of hot water at inlet in °C
T_wout=74// The temperature of hot water at outlet in °C
C_pa=1.02// The specific heat capacity of air in kJ/kg.K
C_pw=4.187// The specific heat capacity of water in kJ/kg.K

// Calculation
Q=m_a*C_pa*(T_2-T_1)// Heat input in kW
m_w=Q/(C_pw*(T_win-T_wout))// The mass flow rate of water in kg/s
printf("\n \nHeat input,Q=%4.0f kW \nThe mass flow rate of water,Q=%2.0f kg/s",Q,m_w)

