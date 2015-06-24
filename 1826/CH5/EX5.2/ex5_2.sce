// Example 5.2, page no-130
clear
clc
lp=4.0185*10^-10//m
dens=4285//kg/m^3
avg=6.022*10^26
wt_cs=132.9
wt_cl=35.5
N=(dens*avg*lp^3)/(wt_cs+wt_cl)
sd=(1-N)*100/1
printf("The number of Schottky defects per unit cell = %.3f%%",sd)
