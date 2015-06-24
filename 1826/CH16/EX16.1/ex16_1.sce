// Example 16.1, page no-416
clear
clc

lam=0.4*10^-6//m
A=4*10^-6//m^2
in=200//W/m^2
h=6.626*10^-34
c=3*10^8//m/s
N=in*A*lam/(h*c)
printf("The number of pairs generated per second is %.3f * 10^14",N*10^-14)
