clc
twb1 = 15.2// Wbt in degree Celsius 
twb2 = 26.7// Wbt in degree Celsius  
tw3 = 30  // Temperature at state 3 in degree Celsius 
h1 = 43 // Enthalpy at state 1 in kJ/kg
h2 = 83.5 // Enthalpy at state 2 in kJ/kg
hw = 84 // Enthalpy of water in kJ/kg
mw = 1.15 // mass flow rate of water in kg/s
W1 = 0.0088 // Humidity ratio of inlet stream 
W2 = 0.0213 // Humidity ratio of exit stream 
hw3 = 125.8 // Enthalpy of water entering tower in kJ/kg 
hm = 84 // Enthalpy of make up water in kJ/kg 
G = 1 // mass flow rate of dry air in kg/s
hw34 = (G/mw)*((h2-h1)-(W2-W1)*hw)  // Enthalpy change
tw4 = tw3-(hw34/4.19) // Temperature of water leaving the tower
A = tw4-twb1 //Approach of cooling water
R = tw3-tw4 //Range of cooling water
x = G*(W2-W1) //Fraction of water evaporated 

printf("\n Example 15.8\n")
printf("\n Temperature of water leaving the tower is %f degree celcius",tw4)
printf("\n Range of cooling water is %f degree Celsius",R)
printf("\n Approach of cooling water is %f degree celcius",A)
printf("\n Fraction of water evaporated is %f kg/kg dry air",x)
//The answers vary due to round off error

