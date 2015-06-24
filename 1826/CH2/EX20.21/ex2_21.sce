// Example 2.21, page no-42
clear
clc
d=8960
m=63.54
n=4
avg=6.023*10^26
a=(n*m*10^-3/(avg*d))^(1/3)
printf("\nThe lattice constant of copper is %.4f A°",a*10^10)
