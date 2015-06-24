//clc()
l = 10;//m
h = 0.01;//m^(-2)
Ta = 20;
T0 = 40;
T10 = 200;
//dT/dx = z
//dz/dx = h'(T-Ta)
// we use z = 10 as initial guess and integrating above equations simultaneously, solving using RK4 method, we get T10 = 168.3797
// similarly, with z = 20, T10 = 285.898
z01 = 10;
z02 = 20;
T10a = 168.3797;
T10b = 285.898;
z0 = z01 + (z02 - z01)*(T10 - T10a)/(T10b - T10a);
disp(z0,"z0 = ")
disp("this value of z can be used to get the correct value")
