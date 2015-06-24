// Example 2.13, page no-37
clear
clc
//(i)
h=1
k=1
l=1
a=4.12*10^-10
d=a/sqrt(h^2+k^2+l^2)
printf("\nFor (111) plane\nThe lattice spacing is %.3f*10^-10 m",d*10^10)
//(ii)

h=1
k=1
l=2
a=4.12*10^-10
d=a/sqrt(h^2+k^2+l^2)
printf("\n\nFor (112) plane\nThe lattice spacing is %.3f*10^-10 m",d*10^10)
//(iii)

h=1
k=2
l=3
a=4.12*10^-10
d=a/sqrt(h^2+k^2+l^2)
printf("\n\nFor (123) plane\nThe lattice spacing is %.3f*10^-10 m",d*10^10)
