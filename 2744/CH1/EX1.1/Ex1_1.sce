clear all;
clc;
P = 5.5 ;//Axial pull in tons
E = 13000 ;//modulus of elasticity tons/in^2
l = 120 ;//length in inches
A = %pi/4 ;//Area of resisting section in^2
p = P/A ;//Intensity of stress in tons/in^2
e = p/E ;//strain
delta_l =  l*e;//elongation of the bar in inches
printf('The elongation of the bar is %.4f inch',delta_l);
