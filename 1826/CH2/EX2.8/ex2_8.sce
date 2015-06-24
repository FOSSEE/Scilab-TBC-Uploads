// Example 2.8, page no-34
clear
clc
///(i)
h=1
k=0
l=1
a=4.2*10^-10
d=a/sqrt(h^2+k^2+l^2)
printf("\nThe lattice spacing for the plane(101) is %.3f*10^-10 m",d*10^10)
///(ii)
h=2
k=2
l=1
a=4.12*10^-10
d=a/sqrt(h^2+k^2+l^2)
printf("\nThe lattice spacing for the plane(220) is %.1f*10^-10 m",d*10^10)
