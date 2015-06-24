//Example 7.6, page no-441
clear
clc
t=12
Rsb=7
Rsf=1.12
B=1.5
mu=t*(Rsb-Rsf)*B
printf("mu= %.2f centipoises = %d centipoises(approx)",mu,ceil(mu))
