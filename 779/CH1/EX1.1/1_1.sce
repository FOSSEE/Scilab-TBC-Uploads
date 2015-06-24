d_r = 13640; // Density of mercury in kg/m3
g = 9.79; // Acceleration due to gravity in m/s2
z = 562e-03; // Difference in height in m
z0 = 761e-03; // Reading of barometer in m
P = (d_r*g*(z+z0))*(0.987/1e05); // Gas Pressure in bar
disp("bar",P,"Gas Pressure is ")
