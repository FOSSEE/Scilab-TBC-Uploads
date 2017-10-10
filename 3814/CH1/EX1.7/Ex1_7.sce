
// to determine density of air,weight of air in the tank
clc
p1=101.3 // absolute pressure in the tank in kpa
Ab=(3*p1)+(p1)
mprintf('\n Absolute pressure in the tank in kPa = %f kPa',Ab)
R=287 // constant value
T=288 // temperature in kelvin
d=Ab/(R*T)
mprintf('\n Density  p = %e Kg/m3',d*10^3)
m=0.85 // mass in m3
g=9.8 // gammma constant
W=(d*m*g)
mprintf('\n Weight of air W=mg= %f Kg',W*10^3)
