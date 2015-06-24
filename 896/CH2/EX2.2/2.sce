clc
//calc pressure at depth of 304.9m
d=304.9;//m
rho_water=1024;//Kg/m^3
g=9.81;//m/s^2
p_atm=101.3;//KPa
//gauge pressure=(desity)*(acc. due to gravity)*(depth)
p_depth=p_atm+rho_water*g*d/1000;//KPa
disp("pressure at the depth is")
disp(p_depth)
disp("KPa")