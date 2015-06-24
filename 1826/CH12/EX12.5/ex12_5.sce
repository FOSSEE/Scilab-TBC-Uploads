// Example 12.5, page no-352
clear
clc

K=120//W/m.K
t2=423
t1=323
delT=t2-t1
delx=7.5*10^-3//m
A=0.5//m^2
Q=K*A*(delT/delx)
hph=Q*3600
printf("The heat flux transmitted through a sheet per hour is %.2f *10^9 J.h^-1",hph*10^-9)
