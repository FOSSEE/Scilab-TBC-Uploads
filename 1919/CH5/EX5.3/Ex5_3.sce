
// Theory and Problems of Thermodynamics
// Chapter 5
// Second law of Thermodynamics
// Example 3

clear ;clc;

//Given data
TL = -10   //TL = Lower temperature of reservoir
TH =  40   //TH = High  temperature of reservoir

// Units conversion from Celsius to Kelvin
TL = TL + 273.15;
TH = TH + 273.15;

// To find the coefficient of performance of a Carnot refrigerator and a Carnot Heat Pump
COP_R   = TL/(TH-TL);      // Carnot refrigerator
COP_HP  = TH/(TH-TL);      // Carnot Heat pump

// Results
mprintf('The coefficient of performance of a Carnot refrigerator = %5.3f ', COP_R)
mprintf('\n The coefficient of performance of a Carnot Heat Pump = %5.3f ', COP_HP)
