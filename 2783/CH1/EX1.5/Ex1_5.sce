clc
//initialization of new variables
clear
R=1 //mm
sigma=0.073 //N/m
theta=0 //degrees
rho=1000 //kg/m^3
g=9.8 //m/s^2
//calculations
theta=theta*%pi/180 //radians
h=2*sigma*cos(theta)/(rho*g*R*10^-3)
//result
printf('The rise of water = %.3f m',h)
R=1 //mm
sigma=0.48 //N/m
theta=130 //degrees
rho=13600 //kg/m^3
g=9.8 //m/s^2
//calculations
theta=theta*%pi/180 //radians
h=2*sigma*cos(theta)/(rho*g*R*10^-3)
//result
printf('\n The rise of mercury = %.4f m',h)

