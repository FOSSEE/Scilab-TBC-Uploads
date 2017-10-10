clc;
disp("Example 8.3")
d=0.025 // diameter in m
l=120 // length in m
density= 1000
Q=2.525e-3  // volumetric flow rate in m^3/s
U=4*Q/(%pi*d*d)
Re=density*U*d/mew
f=0.0014+(0.125/(Re^0.32))
delP=2*f*l*U*U*density/d
disp(delP,"Pressure head is ")
Power=delP*Q
disp(Power,"Power required to overcome friction is ")
