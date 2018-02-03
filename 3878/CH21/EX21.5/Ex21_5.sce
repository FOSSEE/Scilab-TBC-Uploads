clear
// Variable declaration
T_s=100// The temperature of steam in °C
T_d=21// The dry bulb temperature in °C
H=50//  % saturation
x_ab=0.0079// Moisture content of air before in kg/kg
x_a=0.0067// Moisture added in kg/kg
C_ps=1.972// The specific heat capacity of the steam in kJ/kg°C
C_pa=1.006// The specific heat capacity of air in kJ/kg.K

// Calculation
x=x_ab+x_a// Final moisture content in kg/kg
t=((x_a*C_ps*T_s)+(C_pa*T_d))/(((x_a*C_ps)+(C_pa)))// The final dry bulb temperature in °C
printf("\n \nFinal moisture content=%0.4f kg/kg \nThe final dry bulb temperature,t=%2.2f°C",x,t)

