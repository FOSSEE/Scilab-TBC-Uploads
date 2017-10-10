clc;
disp("Example 5.7")
U=12 // in m/s
l=1.5 // length of the plate
x=l/8
v=1.8e-5
density= 1.2
Re=U*x/v
m=x*((280/(13*Re))^0.5)
disp(m,"Boundary layer thickness at 1/8th of the plate distance from the leading edge is ")
tau=3*density*v*U/(2*m)
disp(tau,"The wall shear stress is ")
