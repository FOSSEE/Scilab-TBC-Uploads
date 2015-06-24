// Example 2.3, page no-31
clear
clc

d=9.6*10^2//kg/m^3
awt=23
n=2
avg=6.023*10^26
m=n*awt/avg
a=(m/d)^(1/3)
printf("The lattice constant od sodium is %.1f A°",a*10^10)
