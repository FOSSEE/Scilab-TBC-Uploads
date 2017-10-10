clc;
disp("Example A.17")
d=14e-3 // diameter in m
l=100 // length in m
v=1e-5 // kinematic viscosity in kg/ms
Re=2100
U=Re*v/d
h=32*v*l*U/(9.81*d*d)
disp(h,"Head loss is ")

