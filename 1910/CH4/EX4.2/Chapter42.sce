// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 2")
//Diameter of sphere in m
d = 1.5*(10^(-3));
//radius in m
r = d/2;
//Thermal conductivity of sphere in W/(m*°C)
k = 40;
//Density in kg/m^3
rho = 8000;
//Specific heat in J/(Kg*K)
c = 300;
//Heat transfer coefficient in W/(m^2*°C)
h = 75;
//Time constant in sec
tc = ((rho*c)*(((((4*%pi)*r)*r)*r)/3))/((((h*4)*%pi)*r)*r);
disp("Time constant in seconds is")
tc
//Using eq. 4.4
//Given fraction is 0.01 (1 percent)
//Required time in sec
t = (-8)*log(0.01);
disp("Time required in seconds")
t
