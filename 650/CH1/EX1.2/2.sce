clc
p_v=50*10^3; //N/m^2
r=1; //m
p_atm=101.3*10^3; //N/m^2
rho=1000; //kg/m^3
H=2.5; //m
g=9.81; //m/s^2

F=p_v*%pi*r^2;
disp("Total vertical force tending to lift the dome =")
disp(F)
disp("N")

p=p_atm+p_v+rho*g*H;
disp("Absolute pressure at the bottom of the vessel =")
disp(p)
disp("N/m^2")

Fd=(p_v+rho*g*H)*%pi*r^2+rho*g*2*%pi*r^2/3;
disp("Downward force imposed by the gas and liquid =")
disp(Fd)
disp("N")