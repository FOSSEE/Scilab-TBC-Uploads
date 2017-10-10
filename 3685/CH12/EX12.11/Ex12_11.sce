clc
h1 = 3285  // Enthalpy at state 1 in kJ/kg
h2s = 3010 // Enthalpy at state 2s in kJ/kg
h3 = 3280 // // Enthalpy at state 3 in kJ/kg
h4s = 3030 // // Enthalpy at state 4s in kJ/kg
// Saturation pressure at temperature 180 degree centigrade
psat = 10 // In bar
h4 = h3-0.83*(h3-h4s) // // Enthalpy at state 4 
h5s = 2225 // // Enthalpy at state 5s in kJ/kg
h5 = h4-0.83*(h4-h5s) // // Enthalpy at state 5
h6 = 162.7 // Enthalpy at state 6 in kJ/kg
h7 = h6 // // Enthalpy at state 7 
h8 = 762.81// Enthalpy at state 8 in kJ/kg
h2 = h1-0.785*(h1-h2s) //Enthalpy at state 2 
m = (h8-h7)/(h4-h7) // regenerative mass flow
n_cycle = ((h1-h2)+(h3-h4)+(1-m)*(h4-h5))/((h1-h8)+(h3-h2)) // Cycle efficiency

printf("\n Example 12.11\n")
printf("\n The minimum pressure at which bleeding is neccessary is %d bar",psat)
printf("\n Steam flow at turbine inlet is %f kg/s",m)
printf("\n Cycle efficiency is %f percent",n_cycle*100)
//The answers vary due to round off error
// Part A and Part B are theoretical problems

