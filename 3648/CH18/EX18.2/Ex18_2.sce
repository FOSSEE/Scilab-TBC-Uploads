//Example 18_2
clc();
clear;
//To find the magnitude of the magnetic field
m=1.67*10^-27        //Units in Kg
v=10^6         //Units in meters/sec
r=4*10^-2          //Units in Meters
q=1.6*10^-19         //Units in C or eV
b=(m*v)/(r*q)         //Units in T
printf("The magnitude of magnetic field is B=%.4f T",b)
