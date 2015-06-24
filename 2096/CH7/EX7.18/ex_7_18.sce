//Example 7.18 // the longitudinal and hoop stress
clc;
clear;
close;
//given data :
ex=0.00016;
ey=0.00064;
E=200*10^9; // in N/m^2]
mu=0.26;
a=(E*(ex+(mu*ey))/(1-(mu)^2))*10^-6;
b=(E*(ey+(mu*ex))/(1-(mu)^2))*10^-6;
disp(a,"longitudinal,a(MN/m^2) = ")
disp(b,"hoop stress,b(MN/m^2) = ")
