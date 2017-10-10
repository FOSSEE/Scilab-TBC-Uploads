clc
// At 6 MPa, 400 degree
h1 = 3177.2 // Enthalpy in kJ/kg
s1 = 6.5408 //Entropy in kJ/kgK
// At 20 degree
h0= 83.96 // Enthalpy in kJ/kg 
s0 = 0.2966//Entropy in kJ/kgK
T0 = 20 // Surrounding temperature in degree Celsius 
f1 = (h1-h0)-(T0+273)*(s1-s0) // Availability before throttling
// By interpolation at P= 5MPa, h= 3177.2
s2 = 6.63 //Entropy in kJ/kgK
h2 = h1 // Throttling
f2 = (h2-h0)-(T0+273)*(s2-s0) // Availability after throttling
df = f1-f2 // Change in availability
x3s = (s2-1.5301)/(7.1271-1.5301) //Entropy at state 3 in kJ/kgK
h3s = 504.7+(x3s*2201.9) //Enthalpy at state 3 in kJ/kg
eis = 0.82 // isentropic efficiency
h3 = h2-eis*(h1-h3s) // Enthalpy at state 3 in kJ/kgK
x3 = (h3-504.7)/2201.7 // Steam quality at state 3
s3 = 1.5301+(x3*5.597) // Entropy at state 3
f3 = (h3-h0)-(T0+273)*(s3-s0) // Availability at state 3

printf("\n Example 9.14")
printf("\n The availability of the steam before the throttle valve %f kJ/kg",f1)
printf("\n The availability of the steam after the throttle valve %f kJ/kg",f2)
printf("\n The availability of the steam at the turbine exhaust %f kJ/kg",f3)
printf("\n The specific work output from the turbine is %f kJ/kg",h2-h3)
//The answers vary due to round off error

