//Example 16.1, page 575
clc
r=(4**(1/3)+208**(1/3))*1.07
printf("\n The sum of radii is  %f  F",r)
e=1.60*10^-19//in coul
z=82
x=1.1*10^-10//coul2/nt-m2
Vo=(2*z*e*e)/(x*r*10^-15)
printf("\n The total energy is  %e  J",Vo)