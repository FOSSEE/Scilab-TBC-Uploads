//Example 17.4
clc
r=0.321*10^-3
A=%pi*(r*r)
disp("Solution a")
disp(A,"Area in m^2=")
rho=1.5*10^-6//in ohm=m
l=rho/A
disp(l,"Resistance in ohm/m=")
disp("solution b")
Delta_v=10
I=(Delta_v)/l
disp(I,"The current in Amps=")