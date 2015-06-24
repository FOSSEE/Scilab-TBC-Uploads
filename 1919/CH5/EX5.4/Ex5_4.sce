
// Theory and Problems of Thermodynamics
// Chapter 5
// Second law of Thermodynamics
// Example 4

clear ;clc;

//Given data
TL  = -25     //TL = Lower temperature of reservoir
TH  =  40     //TH = High  temperature of reservoir
W_R = 0.5   //W_R = power consumption of carnot refrigerator

// Units conversion from Celsius to Kelvin
TL = TL + 273.15;
TH = TH + 273.15;

// To find the coefficient of performance of a Carnot refrigerator and a Carnot Heat Pump
COP_R   = TL/(TH-TL);   // Carnot refrigerator
COP_HP  = TH/(TH-TL);   // Carnot Heat pump
QL = COP_R * W_R;       // Rate of energy removal from the cold body
QH = QL                 // Rate of energy rejected to the high temperature body
W_HP = QH/COP_HP;       // Power cunsumption of Carnot heat pump

// Results
mprintf('Rate of energy removal from the cold body = %5.3f kJ/s', QL)
mprintf('\n Power cunsumption of Carnot heat pump = %5.3f kW', W_HP)
