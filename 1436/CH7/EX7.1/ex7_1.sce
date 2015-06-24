//Example 7.1, page no-436
clear
clc
f=2*9.8*10^5
A=100
V=20
l=10
mu=(f/A)/(V/l)
mu=mu/1000
printf("The absolute viscosity mu = %.1f*10^5 centipoises",mu)
