// Example 2.12.3 
clc;
clear;
core_diameter=8d-6;        //core diameter
delta=0.92/100;      //relative index difference
lamda=1550d-9;       //operating wavelength
n1=1.45;     //core refractive index
a=core_diameter/2;      //computing core radius
v= 2*%pi*a*n1*sqrt(2*delta)/lamda;      //computing normalized frequency
M=(v)^2/2;      //computing guided modes
printf("\nNormalized Frequency is %.1f.\nTotal number of guided modes are %.d.",v,M);
