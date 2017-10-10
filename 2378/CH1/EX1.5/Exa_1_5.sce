//equivalent k of crane
//Exa_1_5
clc;
clear;

//refer fig_1_27
l1=sqrt(3^2 + 10^2 -(2*3*10*cosd(135)));        //length FC in m
l2=10        //length of AB in m
A1=100e-6;        //cross section area of FB in m^2
A2=2500e-6;        //cross section area of AB in m^2
E1=207e9;        //youngs modulus of material
E2=207e9;        //youngs modulus of material
theta= acosd(( l1^2 + 3^2 -10^2) / (2*l1*3));        //angle theta in degree

k1=(A1 * E1)/ l1;        //spring constant of FB
k2=(A2 * E2)/ l2;        //spring constant of AB

keq= (k1*(cosd(45))^2) + (k2*((cosd(90-theta))^2));        //equivalent spring constant of system
disp(keq,"equivalent spring constant of system in N/m = ");
//note: the answer in the book is printed incorrectly as 26430400 N/m
