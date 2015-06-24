// Example 18.13, page no-467
clear
clc

c=2*10^-6//F
v=1000//V
epsr=100
E=(c*v^2)/2
c0=c/epsr
e2=(c0*v^2)/2
E1=E-e2
printf("The energy stored in dielectric is %.2f J",E1)
