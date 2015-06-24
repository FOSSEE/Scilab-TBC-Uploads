// Exa 1.12
clc;
clear;
close;
// given :
P=[1,2,3] // coordinates of point P in cartezian system
x=1// x coordinate of point P in cartezian system
y=2// y coordinate of point P in cartezian system
z=3// z coordinate of point P in cartezian system
r=sqrt(x^2+y^2+z^2) // radius of sphere in m
theta=acosd(z/(r)) // angle of elevation in degrees
phi=atand(x/y) // azimuthal angle in degrees
disp(r,"radius of sphere in m:")
disp(theta,"angle of elevation in degrees:")
disp(phi,"azimuthal angle in degrees:")


// note : answer in the book is incomplete they find only one coordinate but there are three.
