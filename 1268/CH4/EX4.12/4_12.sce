clc;
disp("Example 4.12")
mplus= 5 // laminar sublayer thickness in dimensionless form
d= 0.05 // diameter in m
density= 1000 // in kg/m^3
mu= 0.001 // viscosity in kg/ms
nu = mu/density;
U=1 // velocity in m/s
Re=density*U*d/mew
f= 0.0791/(Re^0.25)
m= (mplus)*nu/(U*((f/2)^0.5))
disp("Laminar sublayer thickness is ")
disp(m)
