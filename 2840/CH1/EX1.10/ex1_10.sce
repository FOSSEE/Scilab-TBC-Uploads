clc;
clear all;
n = 2.8e10; // Rigidity modulus in Newton per meter suquare
theta = 90; // In degress
theta1 = theta*(%pi/180); // in radians
l = 2; //Length of wire in meter
r = 0.5e-3; //  Radius of wire in meter
 t = (%pi^2 * n *r^4)/(4*l);
 disp('Nm',t,'Torque is');
