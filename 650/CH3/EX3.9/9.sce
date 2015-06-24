clc
u=0.032; // Ns/m^2
Re=2000; // maximum value
Rho=854;
del_p=150; // N/m^2

d=(32*u^2*Re/(Rho*del_p))^(1/3);
disp("The maximum inside diameter is found to be ")
disp(d)
disp("m")