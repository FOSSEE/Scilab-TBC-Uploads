clc;
clear all;
disp("velocity distribution")
disp("velocity distribution : u =a+b*y+c*y^2")
disp("the following boundary conditions must be satisfied:")
disp("at y = 0, u= 0")
disp("0 =a+0+0")
disp("hence a =0")
disp("at y =d, du/dy = 0")
disp("b+2*c*d =0")
disp("b=-2*c*d")
disp(" at y = d, u = U")
disp("U=b*d+c*d^2")
disp("U = -2*c*d*d+c*d*d")
disp("c =-U/d^2")
disp("b = 2*U/d")
disp("u =2*U/d*y-U*y^2/d^2")
disp("u/U = 2(y/d)-(y/d)^2")

