d_r = 13.6e03; // Density of mercury in kg/m3
g = 9.81; // Acceleration due to gravity in m/s2
z = 710e-03; // Stean flow pressure in m
z0 = 772e-03; // Reading of barometer in m
P = 1.4e06; // Gauge pressure of applied steam in Pa
P0 = d_r*g*z0; // Atmospheric pressure in Pa
Pi = P+P0 ; // Inlet steam pressure in Pa
Pc = d_r*g*(z0-z); // Condenser pressure in Pa
disp("Pa",Pi,"Inlet steam pressure is")
disp("Pa",Pc,"Condenser pressure is")



