clc;
disp("Example A.7")
Q=700000/3600  // in m^3/s
d=0.2 // diameter in m
v=1.2e-5 // kinematic viscosity
Re=4*Q/(%pi*d*v)
ratio=0.0013
f=0.3313/((log((ratio/3.7)+(5.74/(Re^0.9))))^2)
disp(f,"Friction factor is ")
