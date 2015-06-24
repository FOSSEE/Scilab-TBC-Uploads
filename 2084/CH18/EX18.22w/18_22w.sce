//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.22w
//calculation of object distance from the lens with one side silvered

//given data
v=-25; //image distance (in cm)
R=25; //radius of curvature of the spherical convex surface (in cm)
mu1=1; //refractive index of the medium in which object is kept
mu2=1.5; //refractive index of the medium of lens

//calculation
u=mu1/((mu2/v)-((mu2-mu1)/R)); //formula for refraction at spherical surface

disp(abs(u),'object should be placed at a distance(in cm) of');
