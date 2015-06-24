// Example 6.9, page no-374
clear
clc
rho=1000
ex_p=0.5*10^4
P=1.6*10^4//(rho*h/10000)+ex_p
h=(P-ex_p)/1000
printf("h = %d m",h)
