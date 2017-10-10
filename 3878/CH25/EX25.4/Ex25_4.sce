clear
//
// Variable declaration
T_d1=13// The dry bulb temperature in °C 
m_a=0.4// The flow rate of primary air in kg/s
T_win=12// The temperature of water at inlet in °C 
T_wout=16// The temperature of water at outlet in °C 
H=72// % saturation
T_d2=21// The dry bulb temperature in °C 
// From example 25.1
Q_i=14// Internal load in kW
Q_l=1.5// Latent heat gain in kW
C_pw=4.19// The specific heat capacity in kJ/kg.K
C_pa=1.02// The specific heat capacity of air in kJ/kg.K

// Calculation
x_a=0.006744// Moisture in primary air, 13 C DB, 72% sat
x_r=Q_l/(2440*m_a)// Moisture removed in kg/kg
x_rise=x_a+x_r// Moisture in room air will rise to in kg/kg
// which corresponds to a room condition of 21°C dry bulb, 53% saturation
Q_a=m_a*C_pa*(T_d2-T_d1)// Sensible heat removed by primary air in kW
Q_w=Q_i-Q_a// Heat to be removed by water in kW
m_w=Q_w/(C_pw*(T_wout-T_win))// Mass water flow in kg/s
printf("\n \nMass water flow=%0.2f kg/s",m_w)

