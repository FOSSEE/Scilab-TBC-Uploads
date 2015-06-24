clc
//calc pressure of gauge through a spring piston system
k=10000;//N/m (spring constant)
x=0.025;//m (displacement in spring)
A=0.01;//m^2 (area of piston)
gauge_pressure=k*x/A/1000;//KPa
disp("The gauge pressure is")
disp(gauge_pressure)
disp("KPa")