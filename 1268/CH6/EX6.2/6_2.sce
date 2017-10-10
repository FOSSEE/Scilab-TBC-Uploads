clc;
disp("Example 6.2")
density= 1200 // in kg/m^3
mew= 2.25e-5  // viscosity in Pas
g= 9.81  // acceleration due to gravity in m/s^2
gasdensity= 1.15 // in kg/m^3
velocity=0.2 // in m/s
d=(18*mew*velocity/(g*(density-gasdensity)))^0.5
disp(d, "Maximum particle size is ")
