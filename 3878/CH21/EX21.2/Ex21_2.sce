clear
// Variable declaration
Q=500// The amount of heat required for the building in kW
T=19// The temperature at which air enters the heater coil in °C
m_a=68// // The mass flow rate of air in kg/s
C_pa=1.02// The specific heat capacity of air in kJ/kg.K

// Calculation
t=T+(Q/(m_a*C_pa))// The air supply temperature in °C
printf("\n The air-supply temperature,t=%2.1f°C",t)

