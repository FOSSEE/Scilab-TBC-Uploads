u0 = 0.718*273*1e03;
t = poly(0,'t');
u = u0+718*t; // in SI unit
hp = u + 285*(t+273); // ""
h = horner(hp,150); // h = hp(150)
W = 100; // W = dW/dt
m = W/h;
disp("kg/h",m*3600,"The rate at which air flows out of the tank")