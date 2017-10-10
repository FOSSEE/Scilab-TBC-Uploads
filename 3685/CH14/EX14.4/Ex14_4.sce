clc
h3 = 882 // Enthalpy at state 3 in kJ/kg
h2 = 1034 // Enthalpy at state 2 in kJ/kg
h6 = 998 // Enthalpy at state 6 in kJ/kg
h1 = 1008 // Enthalpy at state 1 in kJ/kg
v1 = 0.084 // Specific volume at state 1 in m^3/kg
t4 = 25 // Temperature at state 4 in degree Celsius
m = 10 // mass flow rate in kg/s
h4 = h3-h1+h6 
h5 = h4 // isenthalpic process
w = (m*14000)/((h6-h5)*3600) // in kg/s
VFR = w*3600*v1 // Volume flow rate in m^3/h
ve = 0.8 // volumetric efficiency
CD = VFR/(ve*60) // Compressor displacement in m^3/min
N = 900 // Number of strokes per minute
n = 2 // number of cylinder

D = ((CD*4)/(%pi*1.1*N*n))^(1/3) // L = 1.1D L = length D = diameter
L = 1.1*D
COP = (h6-h5)/(h2-h1) // coefficient of performance
PI = w*(h2-h1) // Power input

printf("\n Example 14.4\n")
printf("\n Refrigeration effect is %d kJ/kg",h6-h5)
printf("\n Refrigerant flow rate is %f kg/s",w)
printf("\n Diameter of cylinder is %f cm",D*100)
printf("\n Length of cylinder is %f cm",L*100)
printf("\n COP is %f ",COP)
printf("\n Power required to drive the compressor is %f kW",PI)

//The answers vary due to round off error

