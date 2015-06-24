// Example 19.4, page no-543
clear
clc

H=1800//A/m
fi=3*10^-5//Wb
A=0.2*10^-4//m^2

B=fi/A
mu=B/H
printf("\nThe magnetic flux is %.1f Wb/m^2\nThe permeability is %.3f*10^-4 H/m",B,mu*10^4)
