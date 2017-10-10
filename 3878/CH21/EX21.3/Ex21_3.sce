clear
// Variable declaration
T_ra=21// The temperature of the returning air 
H=50// % saturation
T_d=28// The dry bulb temperature in °C
T_w=20// The wet bulb temperature in °C
m_a=20// The mass flow rate of returning air in kg/s
m_b=3// The mass flow rate of outside air in kg/s
x_ra=0.0079// The moisture content in kg/kg
x_oa=0.0111// The moisture content in kg/kg
h_a=41.8// The enthalpy in kJ/kg
h_b=56.6// The enthalpy in kJ/kg

// Calculation
// Method (b)
t_c=((T_ra*m_a)+(T_d*m_b))/(m_a+m_b)// °C
g_c=((x_ra*m_a)+(x_oa*m_b))/(m_a+m_b)// kg/kg
h_c=((h_a*m_a)+(h_a*m_b))/(m_a+m_b)// kJ/kg dry air
printf("\n \nThe condition of the mixture,t_c=%2.1f°C",t_c)

printf("\n \n  g_c=%0.4f kg/kg",g_c)

printf("\n \n  h_c=%2.1f kJ/kg dry air",h_c)

