//Example number 3.7, Page number 3.34

clc;clear;close

// Variable declaration
e=1.6*10**-19 // eV
V=1*10 // in m^3
h=6.625*10**-34

// Calculations
v=(2*e*V**-3)/h // Hz

// Result
printf("Frequency of generated microwaves = %.2e Hz",v)
