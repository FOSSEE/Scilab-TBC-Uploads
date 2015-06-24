clear ;
clc;
// Example 29.3
printf('Example 29.3\n\n');
//page no. 898
// Solution fig. E29.3b

// Given 
DBT1 = 40 ;// Initial dry bulb temperature - [degree C]
DBT2 = 27 ;// Final dry bulb temperature - [degree C]

// Process is assumed to be adiabatic, therefore  wet bulb temperature is constant
WBT1 = 22 ;// Initial wet bulb temperature - [degree C]
WBT2 = WBT1 ;// Final wet bulb temperature - [degree C]

//A is initial and B is final  point , see fig. E29.3b . Humidity is obtained from humidity chart, according to book the respective humidities are as follows
H_B = 0.0145 ;// Humidity at point B -[kg H2O/kg dry air]
H_A = 0.0093 ;// Humidity at point A -[kg H2O/kg dry air]
Diff = H_B - H_A ;// Moisture added in kg per kilogram of dry air going through humidifier -[kg H2O/kg dry air] 

printf('Moisture added per kilogram of dry air going through humidifier is %.4f kg H2O.\n',Diff);