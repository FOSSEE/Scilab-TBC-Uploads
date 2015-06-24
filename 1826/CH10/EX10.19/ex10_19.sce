// Example 10.19, page no-280
clear
clc
i=5*10^-3//A
v=1.35//v
l=0.01//m
b=5*10^-3
t=10^-3//m
a=5*10^-6//m^2
vy=20*10^-3
H=0.45//Wb/m^2

rho=v*a/(l*i)
Ey=vy/t
j=i/a
k=Ey/(H*j)
Rh=3*%pi*k/8
mu=Rh/rho
printf("The mobility of the Ge sample is %.2f m^2/V-s",mu)
