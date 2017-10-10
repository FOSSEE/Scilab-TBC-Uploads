clear
// Variable declaration
T_1=22// °C
T_2=1// °C
C_p=3.1// The specific heat capacity of meat in kJ/kg.K
m=8*10**3// The mass of meat in kg
t=14*3600// The time available for cooling in s

// Calculation
Q=(m*((C_p*(T_1-T_2))))/t// The cooling load in kW
printf("\n The cooling load,Q=%2.1f kW.",Q)

