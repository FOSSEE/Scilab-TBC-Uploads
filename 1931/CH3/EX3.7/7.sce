clc
clear
//INPUT DATA
r=1.246*10^-10//atomic radius of Fcc crystal in m
h1=1//miller indices with respect to x axis in 1st plane
k1=1//miller indices with respect to y axis in 1st plane
l1=1//miller indices with respect to z axis in 1st plane
h2=2//miller indices with respect to x axis in 2nd plane
k2=0//miller indices with respect to y axis in 2nd plane
l2=0//miller indices with respect to z axis in 2nd plane
h3=2//miller indices with respect to x axis in 3rd plane
k3=2//miller indices with respect to y axis in 3rd plane
l3=0//miller indices with respect to z axis in 3rd plane

//CALCULATION
a=(4*r)/sqrt(2)//The lattice constant in a FCC crystal in m
d1=(a/(sqrt(h1^2+k1^2+l1^2)))/10^-10//inter planar spacing distance in 1st plane in m*10^-10
d2=(a/(sqrt(h2^2+k2^2+l2^2)))/10^-10//inter planar spacing distance in 2nd plane in m*10^-10
d3=(a/(sqrt(h3^2+k3^2+l3^2)))/10^-10//inter planar spacing distance in 3rd plane in m*10^-10

//OUTPUT
printf('The inter planar spacing distance in 1st plane is %3.3f*10^-10 m \n The inter planar spacing distance in 2nd plane is %3.4f*10^-10 m \nThe inter planar spacing distance in 3rd plane is %3.3f*10^-10 m',d1,d2,d3)
