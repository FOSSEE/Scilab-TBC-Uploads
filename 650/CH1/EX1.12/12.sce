clc
mc=100; //kg
g=9.81; //m/s^2
rho=1000; //kg/m^3
rho_c=7930; //kg/m^3

m=mc*rho/rho_c;

F=mc*g-m*g;
disp("The tension in the cable =")
disp(F)
disp("N")