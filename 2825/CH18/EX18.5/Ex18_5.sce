//Ex18_5 Pg-947
clc

d=5*10^(-6) //thickness of silicon in m
Dc=3.4*10^(-3) //diffusion coefficient in m^2sec^(-1)

t=d^2/(2*Dc) //time taken to diffuse
printf("Time taken to diffuse = %.1f*1e-9 sec",t*1e9)
