//To Determine the useful flux per pole

clc;
clear;

E=600;
N=1200;
Z=250;
A=2;
P=6;

// EMF Equation

phi=E*A*60/(N*Z*P);// Flux developed

printf('The useful flux per pole = %g Wb \n',phi)
