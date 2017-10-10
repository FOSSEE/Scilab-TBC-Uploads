clear;
disp("Example 6.3")
d=0.1 // diameter of sphere in m
velocity= 0.25 // in m/s
mew= 1.9e-5
density= 1.15 // in kg/m^3
f=0.44
area=%pi*d*d/4
Fd=(f*density*velocity*velocity*area)/2
disp(Fd,"The drag Force is ")
