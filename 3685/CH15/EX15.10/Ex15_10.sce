clc
// Given that
c = 75 // Capacity of classroom in no of perasons
DBT1 = 10 // Outdoor Dry bulb temperature in degree celsius
WBT1 = 8 // Outdoor Wet bulb temperature in degree celsius
DBT2 = 20 // Indoor Dry bulb temperature in degree celsius
RH2 = 50 // Relative humidity in percentage
x =0.5 // Bypass factor
f = 0.3 // Air flow rate per person in cmm
printf("\n Example 15.10 \n")
// From the psychrometric chart 
W1 = 0.0058 // In kg moisture/kg d.a.
h1 = 24.5 // In kJ/kg
h2 = 39.5 // In kJ/kg
h3 = h2
W3 = 0.0074 // In kg moisture/kg d.a.
t2 = 25 // In degree celsius
v1 = .81 // In m^3/kg d.a.
G = f*c/v1
C = G*(h2-h1)/60
t4 = (t2-x*DBT1)/(1-x)
ts = t4
C_H = G*(W3-W1)*60
printf("\n Capacity of heating coil is %f kW,\n Surface temperature of heating coil is %d degree celsius,\n Capacity of humidifier is %f kg/h ",C,ts,C_H)

