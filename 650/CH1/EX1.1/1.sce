clc
rho=924; //kg/m^3
g=9.81; //m/s^2
H=2; //m
d=2; //depth in m

p=rho*g*H;
a=d*H;

F=p*a/2;
disp("Total force exerted over the wall =")
disp(F)
disp("N")