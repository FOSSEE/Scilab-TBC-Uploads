//Example 4_17
clc();
clear;
//To find the lattice parameter of Lead
lemda=1.5*10^-10                       //units in meters
theta=34                              //units in degrees
n=1
h=2
k=0
l=2
a=(n*lemda)/(2*sin(theta))*sqrt(h^2+k^2+l^2)*10^10
printf("the lattice parameter of the Lead is %.3f angstrom",a)
