//Exa2
clc;
clear;
close;
//given data :
//Electron density
n=1*10^24;//unit less
//Electron charge
e=1.6*10^-19; // in coulomb
//Drift velocity
v=1.5*10^-2; // in meter per second
//cross-sectional area
A=1; // in centimeter square
A=1*10^-4; // in meter square
I=e*n*v*A;// in ampere
disp("Magnitude of current is :"+string(I)+" A")