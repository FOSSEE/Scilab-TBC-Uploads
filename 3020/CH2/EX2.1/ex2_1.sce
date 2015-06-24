clc;
clear all;
n = 8.9e-4; // Co-efficient of viscosity of water in newton second per square meter
a = 0.054e-2; // Radius of capillary tube in meters
l = 56e-2; // Length of the capillary tube in meters
h = 34e-2; // Height of pressure head in meters
t = 300; // Time of flow in seconds
g = 9.8; // Gravity Constant
rho = 1e3; // Density of water in Kg per meter cube
V = (%pi*h*g*rho*t*(a^4)/(8*n*l));
mass = V*rho;//mass
mass1=mass*1e3;//conversion to gm from Kg
disp('g',mass1,'The mass of water flowing in 5 minutes')
//there is variation in the answer than book.. there is mistake in book.. checked in calculator also..
