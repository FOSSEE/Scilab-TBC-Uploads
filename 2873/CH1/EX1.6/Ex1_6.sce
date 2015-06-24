// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 6")
m=1;//mass of water in kg
h=1000;//height from which water fall in m
Cp=1;//specific heat of water in kcal/kg k
g=9.81;//acceleration due to gravity in m/s^2
disp("by law of conservation of energy")
disp("potential energy(m*g*h)in joule = heat required for heating water(m*Cp*deltaT*1000*4.18)in joule")
disp("so m*g*h = m*Cp*deltaT*4.18*1000")
disp("change in temperature of water(deltaT) in degree celcius")
disp("deltaT=(g*h)/(4.18*1000*Cp)")
deltaT=(g*h)/(4.18*1000*Cp)

