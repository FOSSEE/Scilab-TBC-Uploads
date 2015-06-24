// Example 2.8.1
clc;
clear;
core_diameter=78d-6;        //core diameter
delta=1.4/100;      //relative index difference
lamda=0.8d-6;       //operating wavelength
n1=1.47;     //core refractive index
a=core_diameter/2;      //computing core radius
v= 2*3.14*a*n1*sqrt(2*delta)/lamda;      //computing normalized frequency
M=(v)^2/2;      //computing guided modes
printf("\nNormalized Frequency is %.3f.\nTotal number of guided modes are %.1f",v,M);
//answer in the book for normalized frequency is given as 75.156(incorrect) and for Guided modes is 5648.5(incorrect)
