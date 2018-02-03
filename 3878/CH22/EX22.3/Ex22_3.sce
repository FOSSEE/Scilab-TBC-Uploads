clear
// Variable declaration
T_d=26// The dry bulb temperature of air in °C
T_w=20// The wet bulb temperature of water in °C
T_win=29// The temperature of water at inlet in °C
T_wout=24// The temperature of water at outlet in °C
C_pw=4.187// The specific heat capacity of water in kJ/kg.K

// Calculation
Q=C_pw*(T_win-T_wout)// Heat from water in kJ/kg
h_ain=57.1// Enthalpy of entering air in kJ/kg
h_aout=78.1// Enthalpy of leaving air in kJ/kg
printf("\n \nHeat from water=%2.0f kJ/kg \nEnthalpy of entering air=57.1 kJ/kg \nEnthalpy of leaving air=78.1 kJ/kg",Q)

printf("\n From the chart, the air leaves at approximately 25.7°C dry bulb")

