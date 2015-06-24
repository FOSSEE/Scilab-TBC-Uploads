clc
g=9.81; // m/s^2
H=0.5; // m
rho_m=1075; // kg/m^3
rho=860; // kg/m^3
B=0.225/0.075;
a1=%pi/4*(0.225)^2;
Cd=0.659;

v_t=sqrt(2*g*H*(rho_m-rho)/rho/(B^4-1));

Q=Cd*a1*v_t;
disp("Rate of flow =")
disp(Q)
disp("m^3/s")