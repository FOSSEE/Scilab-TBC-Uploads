//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.19w
//calculation of focal length of thin lens 

//given data
R1=10; //radius of curvature(in cm) of first surface of given lens
R2=20; //radius of curvature(in cm) of second surface of given lens
mu=1.5; //refractive index of the material of lens

//calculation
f=1/((mu-1)*(1/R1-1/R2)); //lens maker's formula

disp(f,'focal length(in cm) of the given lens is');

