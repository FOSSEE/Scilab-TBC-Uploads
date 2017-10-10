
clc
// Given that
c = 75 // Capacity of classroom in no of persons
DBT1 = 35 // Outdoor Dry bulb temperature in degree celsius
RH1 = 70 // Outdoor relative humidity in percentage
DBT2 = 20 // Indoor Dry bulb temperature in degree celsius 
RH1 = 60 // Indoor relative humidity in percentage
DPT = 10 // Cooling coil dew point temperature in degree celsius
x =0.25 // Bypass factor
f = 300 // Air flow rate in cmm
printf("\n Example 15.12 \n")
// From the psychrometric chart 
W1 = 0.0246 // In kg vap./kg d.a.
h1 = 98 // In kJ/kg
v1 = .907 // In m^3/kg d.a.
h3 = 42 // In kJ/kg
W3 = 0.0088 // In kg moisture/kg d.a.
h2 = 34 // In kJ/kg
hs = 30 // In kJ/kg
t2 = 12 // In degree celsius
G = f/v1
C = G*(h1-h2)/(60*3.5)
X = (h2-hs)/(h1-hs)
C_ = G*(h3-h2)/60
t4 = (DBT2-x*t2)/(1-x)
C_H = G*(W1-W3)
printf("\n Capacity of cooling coil is %f tonnes,\n Bypass factor of cooling coil is %f,\n Capacity of heating coil is %f kW,\n Surface temperature of heating coil is %f degree celsius,\n Mass of water vapor removed is %f kg/min ",C,X,C_,t4,C_H)
//Answers varies due to round off error
