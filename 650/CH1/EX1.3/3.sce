clc
a1=0.3; //m^2
m=1000; //kg
a2=0.003; //m^2
rho_oil=750; //kg/m^3
H=2; //m
g=9.81; //m/s^2

F1=m*g;
F2=a2*(F1/a1-rho_oil*g*H);
disp("The force on the plunger =")
disp(F2)
disp("N")