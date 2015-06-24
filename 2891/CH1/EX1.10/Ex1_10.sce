//Exa 1.10
clc;
clear;
close;
// given :
A=[4,2,1] // vector A
A_x=4 // x coordinate of P
A_y=2 // y coordinate of P
A_z=1 // z coordinate of P
phi=atand(A_y/A_x) // azimuthal in degrees
A_rho=A_x*cosd(phi)+A_y*sind(phi) // x coordinate of cylinder
A_phi=-A_x*sind(phi)+A_y*cosd(phi) // y coordinate of cylinder
A_z=1 // z coordinate of cylinder
A=[A_rho,A_phi,A_z] // cylindrical coordinates if vector A
disp(A,"cylindrical coordinates of vector A:")
