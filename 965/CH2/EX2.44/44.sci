clc;
clear all;
disp("Heat flow per meter")
disp("k = a+b*T+c*T^2")
disp("consider Hollow ring with radius r and thickness dr of a hollow cylinder.")
disp(" heat flow across the ring per unit length is Q = -k*Ar*dT/dr = -k*2*%pi*r*dT/dr")
disp("Q*dr/r = -2*%pi*(a+b*T+c*T^2)*dT")
disp("integrating from inner to outer radiu2*s we get")
disp("Q = 2*%pi*(T1-T2)*(a+b(T1+T2)/2+c*(T1^2+T1*T2+T2^2)/3)/(log(r2/r1)")
