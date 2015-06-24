// Example 19.1, page no-541
clear
clc
M=2300//A/m
B=0.00314// Wb/m^2
mu=4*%pi*10^-7
H=(B/mu)-M
mur=(M/H)+1
printf("The magnetic force H is %.4f A/m and the relative permeability mu_r is %.5f",H,mur)
