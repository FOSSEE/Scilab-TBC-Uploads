// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 5")
rho=1000;//density of water in kg/m^3
g=9.81;//acceleration due to gravity in m/s^2
h=0.50;//depth from above mentioned level in m
disp("boiling point =110 degree celcius,pressure at which it boils=143.27 Kpa(from steam table,sat. pressure for 110 degree celcius)")
p_boil=143.27;//pressure at which pond water boils in Kpa
disp("at further depth of 50 cm the pressure(p)in Kpa")
disp("p=p_boil-((rho*g*h)*10^-3)")
p=p_boil-((rho*g*h)*10^-3)
disp("boiling point at this depth=Tsat_138.365")
disp("from steam table this temperature=108.866=108.87 degree celcius")
disp("so boiling point = 108.87 degree celcius")
