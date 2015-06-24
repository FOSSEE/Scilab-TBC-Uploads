// Example 7.9, page no-165
clear
clc

d=8900 //kg/m^3
cu=63.5
t=10^-14 //s
avg=6.023*10^23
n=avg*d*1000/cu
m=9.1*10^-31//kg
e=1.6*10^-19

sig=(n*t*e^2)/m
printf("The electrical conductivity is %.3f *10^7 /Ohm-m",sig*10^-7)
