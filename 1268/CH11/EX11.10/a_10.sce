clc;
disp("Example A.10")
density=1000 // in kg/m^3
Q=0.1/60 // flow rate in m^3/s
mew=0.001 // viscosity in kg/ms
tau=Q*density/(%pi*2)
Re=4*tau/mew
disp(Re,"Reynolds number is ")
disp("It indicates viscous flow!")
