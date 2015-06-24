clear;
clc;
funcprot(0);

//given data
Q = 2.272;//water volume flow rate in m^3/s
l = 300;//length in m
Hf = 20;//head loss in m
f = 0.01;//friction factor
g = 9.81;//acceleration due to gravity in m/s^2

//Calculations
d = (32*f*l*((Q/%pi)^2)/(g*Hf))^(1/5);

//Results
printf('The diameter of the pipe = %.4f m',d);
