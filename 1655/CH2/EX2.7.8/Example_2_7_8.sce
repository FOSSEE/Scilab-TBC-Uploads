// Example 2.7.8  page 2.28

clc;
clear;

core_diameter=80d-6;        //core diameter
delta=1.5/100;      //relative index difference
lamda=0.85d-6;       //operating wavelength
n1=1.48;     //core refractive index

a=core_diameter/2;      //computing core radius
v= 2*%pi*a*n1*sqrt(2*delta)/lamda;      //computing normalized frequency
M=(v)^2/2;      //computing guided modes
printf("\nNormalized Frequency is %.1f.\nTotal number of guided modes are %.d.",v,M);

//answer in the book for Guided modes is 2873, deviation of 1.
