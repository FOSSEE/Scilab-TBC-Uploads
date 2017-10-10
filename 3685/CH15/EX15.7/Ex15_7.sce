clc
h1 = 57 // Enthalpy at state 1 in kJ/kg 
h2 = h1 // Isenthalpic process
h3 = 42 // Enthalpy at state 3 in kJ/kg
W1 = 0.0065 // Humidity ratio at sate 1
W2 = 0.0088 // Humidity ratio at sate 2
W3 = W2 // Constant humidity ratio process
t2 = 34.5 // Temperature at state 2
v1 = 0.896// Specific volume at state 1 in m^3/kg
n = 1500 // seating capacity of hall
a = 0.3 // amount of outdoor air supplied m^3 per person
G = (n*a)/0.896  // Amount of dry air supplied
CC = (G*(h2-h3)*60)/14000 // Cooling capacity 
R = G*(W2-W1)*60 // Capacity of humidifier

printf("\n Example 15.7 \n")
printf("\n Capacity of the cooling coil is %f tonnes",CC)
printf("\n Capacity of humidifier is %f kg/h",R)
//The answers vary due to round off error

