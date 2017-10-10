clc
P1 = 4 // Boiler pressure in MPa
t1 = 400 // Exit temperature at boiler in degree Celsius
h1 = 3213 // Enthalpy at boiler exit in kJ/kg
V1 = 0.073 // specific volume at boiler exit in m^3/kg
P2 = 3.5 // Pressure at turbine end in MPa
t2 = 392 // Turbine exit temperature in degree Celsius
h2 = 3202 // Enthalpy at turbine exit in kJ/kg
V2 = 0.084 // specific volume at turbine exit in m^3/kg
Q = -8.5 // Heat loss from pipeline in kJ/kg
v1 = sqrt((2*(h1-h2+Q)*1e3)/(1.15^2-1)) // velocity of flow in m/s
A1 = (%pi/4)*0.2^2 // Area of pipe in m^2
w = (A1*v1)/V1 // steam flow rate in Kg/s

printf("\n Example 5.3")
printf("\n The steam flow rate is %f Kg/s",w)
//The answers vary due to round off error

