clc;
clear all;
F = 0.2; // Force in newtons
d = 5e-3; // Displacement in meter
l = 6e-2; // Length of solid in meter
b = 6e-2; // Breadth of solid in meter
h = 2e-2; //Height of solid in meter
A = l*b; // Area of the solid
shs = F/A; // Shear stress
theta = d/h; // Shear strain
rdm = shs/theta; // Rigidity modulus
disp('N/m^2',shs,'Shearing stress')
disp('',theta,'Shearing strain')
disp('N/m^2',rdm,'Rigidity Modulus')   
