clc
//calc gauge pressure of cylinder in a manometer
//height of water above pt.C = 2.5ft
rho_water=62.3;//lbm/ft^3;
h1=2.5;//ft
rho_gas=0.1;//lbm/ft^3
h2=0.5;//ft (height of gas)
g=32.2;//ft/s^2
gauge_pressure=[(rho_water)*g*h1+(rho_gas)*g*h2]/144/32.2;//lbf/in^2
disp("Gauge pressure is")
disp(gauge_pressure)
disp("lbf/in^2")