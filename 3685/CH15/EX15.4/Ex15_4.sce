clc
h1 = 82 // Enthalpy at state 1 in kJ/kg
h2 = 52 // Enthalpy at state 2 in kJ/kg
h3 = 47 // Enthalpy at state 3 in kJ/kg
h4 = 40// Enthalpy at state 4 in kJ/kg
W1 = 0.020 // Specific humidity at state 1
W2 = 0.0115// Specific humidity at state 2 
W3 = W2 // Constant humidity process
v1 = 0.887 // Specific volume at state 1
v = 3.33 // amount of free sir circulated
G = v/v1 // air flow rate
CC = (G*(h1-h3)*3600)/14000 // Capacity of the heating Cooling coil
R = G*(W1-W3) // Rate of water vapor removal
HC = G*(h2-h3) //Capacity of the heating coil
printf("\n Example 15.4\n")
printf("\n Capacity of the cooling coil is %f tonnes",CC)
printf("\n Capacity of the heating coil is %f kW",HC)
printf("\n Rate of water vapor removal is %f kg/s",R)
//The answers vary due to round off error

