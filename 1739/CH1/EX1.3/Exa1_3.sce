//Exa 1.3
clc;
clear;
close;
//Given data :
format('v',5);
n1=1.52;//refractive index
//Formula : sin(theta_c)=n2/n1;
theta_c=73.2;//in Degree
n2=n1*sind(theta_c);
disp(n2,"Refractive Index of another medium  : ");