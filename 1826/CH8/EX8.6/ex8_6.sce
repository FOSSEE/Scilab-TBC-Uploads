// Example 8.6, page no-212
clear
clc

v=0.86*10^6//m/s
m=9.1*10^-31//Kg
e=1.6*10^-19//C
k=1.38*10^-23 //J/K
E=(m*v^2)/2
T=E/k
printf("\nThe fermi energy is %.3f*10^-19 J\nThe Fermi Temperature Tf is %.2f*10^4 K",E*10^19,T*10^-4)
