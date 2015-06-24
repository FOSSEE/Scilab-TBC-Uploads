clc
rho_water=1000;//Kg/m^3
g=9.81;//m/s^2
h=5;//m (depth of water)
//for elevator not accelerated
p_gauge=(rho_water)*g*h/1000;//KPa
disp("THe gauge pressure is")
disp(p_gauge)
disp("KPa")
//for elevator accelerated at 5m/s^2 in upward direction
a=5;//m/s^2
p_gauge=(rho_water)*(g+a)*h/1000;//KPa
disp("THe gauge pressure is")
disp(p_gauge)
disp("KPa")
//for elevator accelerated at 5m/s^2 in downward direction
a=5;//m/s^2
p_gauge=(rho_water)*(g-a)*h/1000;//KPa
disp("THe gauge pressure is")
disp(p_gauge)
disp("KPa")