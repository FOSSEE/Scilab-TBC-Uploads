// Scilab Code Ex12.3 : Page-604 (2011)
clc; clear;
n = 300;....// Number of turns wound per metre on the solenoid
i = 0.5;....// Current through the solenoid, A
V = 1e-03;....// Volume of iron rod, per metre cube
mu_r = 100;    // Relative permeability of the iron
H = n*i;    // Magnetic intensity inside solenoid, ampere-turn per metre
// As, I = (B-mu_o* H)/mu_o
//But, B= mu * H = mu_r * mu_o * H and I = (mu_r-1)* H
I = (mu_r-1)*n*i; 
printf("\nThe Intensity of magnetisation inside the solenoid, I = %5.3e A/m", I);
l = 0.2;....//length of the rod,m
r = 5e-3;....//radius of the rod,m
V = 1.57e-5;....//V=%pi*r^2*l where the volume of the rod having radius r and length,m
 M = I * V ;    // Magnetic moment of the rod, ampere metre square
printf("\nThe magnetic moment of the rod, M = %5.3f ampere metre square",M)

//Result
// The Intensity of magnetisation inside the solenoid, I = 1.485e+004 A/m
// The magnetic moment of the rod, M = 0.233 ampere metre square 
