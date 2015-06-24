// Example 7.6, page no-163
clear
clc

d=10.5*10^3 //kg/m^3
sig=6.8*10^7//per Ohm-m
wt=107.9//kg/m^3
e=1.6*10^-19//C
avg=6.023*10^26//atoms/m^3

n=avg*d/wt
mu=sig/(n*e)
printf("The mobility of electron is %.3f *10^-2 m^2.V/s",mu*10^2)
