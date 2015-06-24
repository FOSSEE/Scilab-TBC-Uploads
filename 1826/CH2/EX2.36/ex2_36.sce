// Example 2.36, page no-52
clear
clc
// Intercepts are in the ratio 3a:4b along X,Y and parallel to Z axis
//x intercept 3,y intercept 4 and z intercept infinity 
a=2*10^-10// 2 Angstrom
h=4
k=3
l=0
d=a/sqrt(h^2+k^2+l^2)
printf("The lattice spacing for the plane 430 is %.1f*10^-10 m",d*10^10)
