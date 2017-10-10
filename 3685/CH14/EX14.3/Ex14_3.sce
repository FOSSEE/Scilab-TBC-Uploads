clc
h1 = 183.19 // Enthalpy at state 1 in kJ/kg
h2 = 209.41 // Enthalpy at state 2 in kJ/kg
h3 = 74.59 // Enthalpy at state 3 in kJ/kg
h4 = h3 // Isenthalpic process
T1 = 40 // Evaporator temperature in degree Celsius 
T2 = -10 // Condenser temperature in degree Celsius
W = 5 // Plant capacity in tonnes of refrigeration
w = (W*14000/3600)/(h1-h4) // Refrigerant flow rate
v1 = 0.077 // Specific volume of vapor in m^3/kg
VFR = w*v1 // volume flow rate
T = 48 // Compressor discharge temperature in degree Celsius
P2 = 9.6066 // Pressure after compression
P1 = 2.1912 // Pressure before compression
rp = P2/P1 // Pressure ratio
Q1 = w*(h2-h3) // Heat rejected in condenser
hf = 26.87 // Enthalpy of fluid in kJ/kg
hfg = 156.31// Latent heat of vaporization in kJ/kg
x4 = (h4-hf)/hfg // quality of refrigerant
COP_v = (h1-h4)/(h2-h1) // Actual coefficient of performance of cycle
PI = w*(h2-h1) // Power input
COP = (T2+273)/((T1+273)-(T2+273)) // Ideal coefficient of performance
r = COP_v/COP
printf("\n Example 14.3\n")
printf("\n Refrigerant flow rate is %f kg/s",w)
printf("\n Volume flow rate is %f m^3/s",VFR)
printf("\n Compressor discharge temperature is %d degree Celsius ",T)
printf("\n Pressure ratio is %f ",rp)
printf("\n Heat rejected to the condenser is %f kW",Q1)
printf("\n Flash gas percentage is %f percent",x4*100)
printf("\n COP is %f kW",COP_v)
printf("\n Power required to drive the compressor is %f kW",PI)
printf("\n Ratio of COP of cycle with  Carnot refrigerator is %f",r)
//The answers vary due to round off error

