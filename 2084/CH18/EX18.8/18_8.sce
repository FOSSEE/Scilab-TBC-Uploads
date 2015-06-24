//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.8
//calculation of focal length of a biconvex lens from known value of radii of curvature of refracting surfaces

//given data
R1=20; //radius of curvature(in cm) of first surface of biconvex lens
R2=-20; //radius of curvature(in cm) of second surface of biconvex lens
mu=1.5; //refractive index of the material of lens

//calculation
f=1/((mu-1)*(1/R1-1/R2)); //lens maker's formula

disp(f,'focal length(in cm) of the given biconvex lens is');
