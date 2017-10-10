// Implementation of example 5.4
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

//Water received by heater at rate w1 at enthalpy h1
//Enthalpy of steam mixed with water h2
//Rate of liquid leaving the heater w3 at enthalpy h3
w1 = 4.2;//kg/s
h1 = 313.93;//kJ/kg
h2 = 2676;
h3  = 419;
//solving equaitons: w1 + w2 = w3 and w1h1 + w2h2 = w3h3
w2 = w1*(h3-h1)/(h2-h3);
printf('Steam supplied to heater per hour, w2 = %0.0f kg/h',w2*3600);