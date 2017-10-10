clc;
disp("Example 4.20")
d=0.05 // in m
G= 125 // Massflow rate per crosssection area in kg/m^2/s
mew= 0.025 // in kg/ms
Re=d*G/mew
density=800
V=G/density
Vmax= 2*V
Vgrad= -2*Vmax*2/d
disp(Vgrad,"Velocity gradient on the wall is ")
