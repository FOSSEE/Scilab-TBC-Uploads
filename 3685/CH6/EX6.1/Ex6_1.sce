clc
T1 = 800 // Source temperature in degree Celsius
T2 = 30 // Sink temperature in degree Celsius
e_max = 1-((T2+273)/(T1+273)) // maximum possible efficiency 
Wnet = 1  // in kW
Q1 = Wnet/e_max // Least rate of heat required in kJ/s
Q2 = Q1-Wnet  // Least rate of heat rejection kJ/s

printf("\n Example 6.1")
printf("\n Least rate of heat rejection is %f kW",Q2)
//The answers vary due to round off error

