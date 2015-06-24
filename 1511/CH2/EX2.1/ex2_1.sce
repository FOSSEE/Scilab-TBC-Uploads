// Example 2.1 page no-45
clear
clc

n=1
h=6.626*10^-34 //J-sec
eps=10^-9/(36*%pi)
m=9.1*10^-31 //kg
e=1.6*10^-19
r=n^2*h^2*eps/(%pi*m*e^2)
printf("\nradius of the lowest state of Ground State, r=%.2f A°",r*10^10)
