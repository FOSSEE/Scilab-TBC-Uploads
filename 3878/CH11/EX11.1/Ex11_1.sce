clear
// Variable declaration
T_c=34// The condensing temperature in °C
T_s=30// The subcooled temperature in °C
g=9.81// m/s**2

// Calculation
P_c=15.69// Saturation pressure at 34°C in bar
P_s=14.18// Saturation pressure at 30°C in bar
dp=P_c-P_s// Permissible pressure drop in bar
rho=1022// Specific mass of liquid in kg/m**3
H=(dp*10**5)/(rho*g)// Possible loss in static head in m
printf("\n Possible loss in static head=%2.1f m",H)

