//example 12
//heating effect of a fan
clear
clc
t1=25 //initial temperature of room in C
p=200 //power consumption of fan in watts
a=30 //exposed surface area in m^2
u=6 //in w/m^2
t2=p/(u*a)+t1 //final temp. of room in C
printf("\n Hence, the indoor air temperature when steady operating conditions are established is = %.1f C. \n",t2);