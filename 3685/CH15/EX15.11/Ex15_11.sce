
clc
// Given that
DBT = 31 // Dry bulb temperature in degree celsius
WBT = 18.5 // Wet bulb temperature in degree celsius
t = 4.4 // Effective surface temperature of coil in degree celsius
RE = 12.5 // Refrigeration effect by the coil in kW
f= 39.6 // Air flow rate in cmm
printf("\n Example 15.11 \n")
// From the fig. given in the example
ws = 5.25 //In g/kg d.a.
hs = 17.7 //In kJ/kg d.a.
v1 = 0.872 // In m^3/kg d.a.
h1 = 52.5 // In kJ/kg d.a.
w1 = 8.2 // In g/kg d.a.
G = f/v1
h2 = h1-(RE*60)/G
w2 = w1-((h1-h2)/(h1-hs))*(w1-ws)
// From the psychrometric chart
t2 = 18.6 // In degree celsius
t_ = 12.5 // In degree celsius
x = (h2-hs)/(h1-hs)
printf("\n DBT of air leaving the coil is %f degree celsius,\n WBT of air leaving the coil is %f degree celsius,\n Coil bypass factor is %f ",t2,t_,x)
// Answer varies due to round off error
