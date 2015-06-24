clc
rho=800; //kg/m^3
g=9.81; //m/s^2
L=0.12;
theta=%pi/180*20; // radians

dp=rho*g*L*sin(theta);
disp("The gauge pressure across the filter =")
disp(dp)
disp("N/m^2")