clc
m = 50  // mass flow rate in kg/h
Th = 23 // Home temperature in degree Celsius
// State 1
T1 = 150 // Saturated vapor temperature in degree Celsius
h1 = 2746.4 // Saturated vapor enthalpy in kJ/kg
s1 = 6.8387 //Saturated vapor entropy in kJ/kgK
// State 2
h2 = 419.0 // Saturated liquid enthalpy in kJ/kg
s2 = 1.3071 //Saturated liquid entropy in kJ/kg 
T0 = 45 //  Atmospheric temperature in degree Celsius
//
b1 = h1-((T0+273)*s1) // Availability at point 1
b2 = h2-((T0+273)*s2) // Availability at point 2
Q_max = m*(b1-b2)/((T0+273)/(Th+273)-1) // maximum cooling rate

printf("\n Example 9.18")
printf("\n The maximum cooling rate is %d kW",Q_max/3600)

