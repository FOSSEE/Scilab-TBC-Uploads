clc;
clear all;
l=1; // Length of wire in meters
d=1e-3; // Diameter of wire in meters
r=d/2;//radius of wire in meters
n=2.8e10; // Rigidity modulus in newton per square meters
ang=%pi/2; //  angle in radian
c=ang*%pi*n*r^4/(2*l);
disp('N m',c,'The couple to be applied is')
