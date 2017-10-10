clc;
disp("Example 4.18")
density=850 // in kg/m^3
mew= 0.0005 // in kg/ms
d= 0.0525 // diameter in m
G= 7620 // in kg/m^2/s
U=G/density
Re=800000
f= 0.0014+(0.125/(Re^0.32))
v= mew/density
m= 5*v/(U*((f/2)^0.5))
disp(m,"Laminar sub layer thickness is")
tau= f*density*U*U/2
disp(tau,"Wall shear stress is ")
