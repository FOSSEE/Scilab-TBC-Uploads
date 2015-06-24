// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;

disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 3")
h=2848;//enthalpy in KJ/kg
p=12*1000;//pressure in Kpa
v=0.017;//specific volume in m^3/kg
disp("internal energy(u)=h-p*v in KJ/kg")
u=h-p*v
