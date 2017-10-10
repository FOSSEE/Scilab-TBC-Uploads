// Example 2_4
clc;clear;funcprot(0);
// Given values
l=0.0015; // Gap between two cylinders in m
T=1.8; // Torque in N.m
L=.4; //  Length  in m
R=.06; // Outer radius of inner cylinder in m
n=300/60; // Number of revolutions per unit time (seconds)

//Calculation
mu=(T*l/(4*%pi^2*R^3*n*L)); // Viscosity of the fluid in N.s/m^2
printf('The viscosity of the fluid,mu =%0.3f N.s/m^2\n',mu);
