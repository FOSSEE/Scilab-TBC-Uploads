clc
// Given that
DBT = 40 // Dry bulb temperature in degree celsius
DBT_ = 25 // Dry bulb temperature after cooling and dehumidification in degree celsius
RH = 70 // Relative humidity in percentage
f = 30 // Air flow rate in cmm
printf("\n Example 15.9 \n")
// From the psychrometric chart 
v1 = 0.9125 // In m^3/kg
G = f/v1
h5 = 41.5 // In kJ/kg
W1 = 0.0182 // In kg vapor/kg dry air 
h1 = 86 // In kJ/kg d.a.
W2 = 0.0136 // In kg vapor/kg dry air 
h2 = 60 // In kJ/kg
L = G*(h1-h2)/3.5
Mo = G*(W1-W2)
x = (h2-h5)/(h1-h5)
printf("\n Bypass factor of coolin coil is  %f ",x)
// Answer veries due to round off error
