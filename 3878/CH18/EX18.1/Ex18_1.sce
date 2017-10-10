clear
// Variable declaration
T_1=15// °C
T_2=0// °C
C_pw=4.187// The specific heat capacity of water in kJ/kg.k
m=20*10**3// The mass flow rate of water in kg/day
h_l=334// kJ/kg
t=24*3600// The time available for cooling in s

// Calculation
Q=(m*((C_pw*T_1)+334))/t// The cooling load in kW
printf("\n The cooling load,Q=%2.0f kW.",Q)

