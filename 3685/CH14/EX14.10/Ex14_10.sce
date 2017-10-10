clc
P1 = 2.4  //Compressor inlet pressure in bar
T1 = 0 // Compressor inlet temperature in degree Celsius
h1 = 188.9 // Enthalpy of refrigerant at state 1 in kJ/kg
s1 = 0.7177 // Entropy of refrigerant at state 1 in kJ/kgK
v1 = 0.0703 // Specific volume at state 1 in m^3/kg
P2 = 9 // Compressor outlet pressure in bar
T2 = 60 // Compressor outlet pressure in degree Celsius
h2 = 219.37 // Actual compressor outlet enthalpy in kJ/kgK
h2s = 213.27 // Ideal compressor outlet enthalpy in kJ/kgK
h3 = 71.93 // Enthalpy of refrigerant at state 3 in kJ/kg
h4 = h3 // Isenthalpic process

A1V1 = 0.6/60 // volume flow rate in kg/s
m_dot = A1V1/v1 // mass flow rate
Wc_dot = m_dot*(h2-h1) // Compressor work
Q1_dot = m_dot*(h2-h3) // Heat extracted 
COP = Q1_dot/Wc_dot // Coefficient of performance
nis = (h2s-h1)/(h2-h1) // Isentropic compressor efficiency
printf("\n Example 14.10\n")
printf("\n Power input is %f kW",Wc_dot)
printf("\n Heating capacity is %f kW",Q1_dot)
printf("\n COP is %f",COP)
printf("\n The isentropic compressor efficiency is %f percent",nis*100)
//The answers vary due to round off error

