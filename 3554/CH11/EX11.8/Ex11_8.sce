// Exa 11.8

 clc;
clear all;

// Given data

w=3000; // Angular frequency in rad/s
R2=10*10^3; // Ohms
R1= 2*10^3; // Ohms
C1=1*10^-6; // farads
R3=1*10^3; // Ohms

// Solution

// Using equations 11.19 and 11.18 (page no.326)to find values of Rx and Lx

Rx=w^2*R1*R2*R3*C1^2/(1+w^2*R1^2*C1^2);
Lx=R2*R3*C1/(1+w^2*R1^2*C1^2);

printf(' The series equivalent inductance and resistance of the network consist of\n  Rx of %.2f k Ohms and Lx of %d mH \n',Rx/1000,Lx*10^3);
