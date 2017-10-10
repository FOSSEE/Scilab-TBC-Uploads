clc;
disp("Example 4.19")
U= 0.5 // in m/s
l= 0.025 // side dimension
area=l*l
perimeter=4*l
rh=area/perimeter
dh=4*rh
v=1e-6
Re=dh*U/v
f=0.0791/(Re^0.25)
disp(f,"Friction factor is ")
