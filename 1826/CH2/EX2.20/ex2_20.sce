// Example 2.20, page no-41
clear
clc
d=7860
m=55.85
n=2
avg=6.023*10^26
a=(n*m*10^-3/(avg*d))^(1/3)
r=a*sqrt(3)/4
printf("\nThe lattice constant of alfa-iron is %.4f A°",a*10^10)
printf("\nThe atomic radius  of alfa-iron is %.5f *10^-10 m",r*10^10)
