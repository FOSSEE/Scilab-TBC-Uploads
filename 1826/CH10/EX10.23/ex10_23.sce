// Example 10.23, page no-284
clear
clc
I=50//A
B=1.5//T
t=0.5*10^-2
e=1.6*10^-19//C
d=2*10^-2
N=8.4*10^28//m^-3
v=B*I/(N*e*d)
printf("The Hall voltage is %.2f *10^-7 V",v*10^7)
