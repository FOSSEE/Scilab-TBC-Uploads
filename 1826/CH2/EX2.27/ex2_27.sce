// Example 2.27, page no-46
clear
clc
h=1
k=1
l=0
d=2*10^-10//m
a=d*sqrt(h^2+k^2+l^2)
R=a/(2*sqrt(2))
printf("The lattice constant is %.3f*10^-10 m\nThe atomic radius of the crystal is %.1f *10^-10 m",a*10^10,R*10^10)
