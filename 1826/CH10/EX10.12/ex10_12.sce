// Example 10.12, page no-275
clear
clc

e=1.60*10^-19//C
eg=1*e
k=1.38*10^-23
m=4
T=0.1*e*4/(3*k*log(m))
printf("Temperature at which Fermi level is shifted 10%% is %.f K",T)
