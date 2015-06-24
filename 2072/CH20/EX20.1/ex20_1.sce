//Example 20.1
clc;
B=.5//in T
A=3.24*10^-4//in m^2
Flux=B*A
N=25
delta_t=.8
disp(Flux,"Magnetic flux in T.m^2=")
e=(N*Flux)/(delta_t)
disp(e,"Induced emf in volt=")
