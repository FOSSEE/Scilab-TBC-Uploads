clc
//gauge pressure=(density)*(acc. due to gravity)*(depth)
rho_oil=55;//lbm/ft^3
g=32.2;//ft/s^2
d=60;//ft (depth of oil cylinder)
gauge_pressure=rho_oil*g*d/32.2;//lbf/ft^2
disp("Gauge pressure is")
disp(gauge_pressure)
disp("lbf/ft^2")
//1 ft=12 in
gauge_pressure=gauge_pressure/144;//lbf/in^2
disp("Gauge pressure is")
disp(gauge_pressure)
disp("lbf/in^2")