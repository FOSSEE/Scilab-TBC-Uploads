clc;
clear all;
l = 0.80; // Distance between the knife edges in meter
r = 0.75e-2; // Radius of rod in meter
m = 800e-3; // Mass of load in Kilogram
dp = 0.030e-2; //  depression on meter
g = 9.8; // Gravity constant
Y = (m*g*l^3)/(12*dp*%pi*r^4);
disp('N/m^2',Y,'Youngs modulus of the material is ');
