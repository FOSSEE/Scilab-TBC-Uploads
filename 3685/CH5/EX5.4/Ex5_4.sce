clc
h1 = 313.93 // Enthalpy of water at heater inlet in kJ/kg
h2 = 2676 // Enthalpy of hot water at temperature 100.2 degree Celsius
h3 = 419 //Enthalpy of water at heater inlet in kJ/kg
w1 = 4.2 // mass flow rate in kg/s

printf("\n Example 5.4")
w2 = w1*(h3-h1)/(h2-h3)// Steam rate  
printf("\n The amount of heat that should be supplied is %d Kg/h", w2*3600)

//The answers vary due to round off error

