clc;
clear all;
l = 1; // Length of wire in m
a = 2e-3; // Radius of wire in m
theta = %pi/2; // in radians
theta1=theta*(180/%pi);//in degrees
n = 5e10; // Rigidity modulus of wire in newton per square meter
t = (%pi*n*a^4*theta)/(2*l); 
disp('Nm',t,'Torsional couple is ');
y=a*theta1/(2*l);//angle of shear at surface
disp('degree',y,'angle of shear at surface');
z=y/2;//angle of shear at midway
disp('degree',z,'angle of shear at midway');

