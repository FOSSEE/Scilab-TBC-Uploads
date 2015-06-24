// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 14")
disp("initial state at 15 degree celcius and 80% relative humidity is shown by point 1 and final state at 25 degree celcius and 50% relative humidity is shown by point 2 on psychrometric chart.")
disp("omega1=0.0086 kg/kg of air,h1=37 KJ/kg,omega2=0.01 kg/kg of air,h2=50 KJ/kg,v2=0.854 m^3/kg")
omega1=0.0086;
h1=37;
omega2=0.01;
h2=50;
v2=0.854;
disp("mass of water added between states 1 and 2 omega2-omega1 in kg/kg of air")
omega2-omega1
disp("mass flow rate of air(ma)=0.8/v2 in kg/s")
ma=0.8/v2
disp("total mass of water added=ma*(omega2-omega1)in kg/s")
ma*(omega2-omega1)
disp("heat transferred=ma*(h2-h1) in KJ/s")
ma*(h2-h1)
disp("so mass of water added=0.001312 kg/s,heat transferred=12.18 KW")
