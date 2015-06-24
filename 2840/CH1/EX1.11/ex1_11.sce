clc;
clear all;
l = 50*1e-2; // length of wire in m
a = 2e-3; // radius of wire in m
theta = 45; // In degree
theta1 = theta*(%pi/180); // In radian
n = 8*1e8 //Rigidity modulus in Newton per meter square
t = (0.5*%pi*n*a^4*theta1^2)/(2*l);
disp('J',t,'Torque is')
