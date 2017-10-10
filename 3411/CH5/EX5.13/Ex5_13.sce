//Example 5_13
clc();
clear;
//To determine the lattice parameter of the material 
lamda=0.07107       //units in nm
theta=29.71         //units in degrees
d400=lamda/(2*sin(theta*(%pi/180)))         //units in nm
hkl=16
a=d400*sqrt(hkl)         //units in nm
printf("Lattice parameter of the material a=%.4fnm",a)
