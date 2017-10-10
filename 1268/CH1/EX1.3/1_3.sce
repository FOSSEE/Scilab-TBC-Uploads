clc;
disp("Example 1.3")
density= 1200 // in kg/m^3
r= 0.15 // bowl radius in m
Ri=0.12 // interface position from the bowl axis in m
n= 3500 // rotational speed in rpm
omega= %pi*2*n/60
p= density*omega*omega*(r^2-Ri^2)/2
disp(" Gauge pressure is ")
disp(p)
disp("  N/m^2")
