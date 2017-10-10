//Example 5_12
clc();
clear;
//To determine the lattice constant
lamda=0.154   //units in nm
h=1
k=1
l=0
theta=20       //units in degrees
a=(lamda/2)*(sqrt(sqrt(h^2+k^2+l^2)/sin(theta*(%pi/180))^2))           //units in nm
printf("Lattice constant a=%.3fnm \n And the element is tungsten Since Tungsten has lattice constant of %.3fnm and crystallizes in bcc structure",a,a)
