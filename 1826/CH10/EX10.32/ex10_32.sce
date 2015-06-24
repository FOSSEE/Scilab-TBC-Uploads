// Example 10.32, page no-289
clear
clc

R=60
rho=2.7*10^-8//Ohm-m
i=15//A.
l=5//m
m=3
e=1.6*10^-19//C
d=2.7*10^3//kg/m^3
awt=26.98
avg=6.023*10^23
n=m*avg*1000*d/awt
printf("Free electron concentration is %.3f * 10^29",n*10^-29)
mu=1/(rho*n*e)
printf("\nThe mobility of electron in aluminium is %.4f*10^-3 m^2/v-s",mu*10^3)
vd=mu*i*R*10^-3/l
printf("\nThe drift velocity of the electron in Al is %.1f*10^-4 m/s",vd*10^4)
