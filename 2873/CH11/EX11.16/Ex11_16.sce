// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 16")
m1=3;//rate at which moist air enter in heating coil in m^3/s
disp("The type of heating involved is sensible heating.Locating satte 1 on psychrometric chart corresponding to 15 degree celcius dbt and 80% relative humidity the other property values shall be,")
disp("h1=36.4 KJ/kg,omega1=0.0086 kg/kg of air,v1=0.825 m^3/kg")
h1=36.4;
omega1=0.0086;
v1=0.825;
disp("final state 2 has,h2=52 KJ/kg")
h2=52;
disp("mass of air(m)=m1/v1 in kg/s")
m=m1/v1
m=3.64;//approx.
disp("amount of heat added(Q)in KJ/s")
disp("Q=m*(h2-h1)")
Q=m*(h2-h1)
