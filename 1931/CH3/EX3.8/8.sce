clc
clear
//INPUT DATA
a=1//the lattice constant of a simple cubic system in m
h1=1//miller indices with respect to x axis in 1st plane
k1=0//miller indices with respect to y axis in 1st plane
l1=0//miller indices with respect to z axis in 1st plane
h2=1//miller indices with respect to x axis in 2nd plane
k2=1//miller indices with respect to y axis in 2nd plane
l2=0//miller indices with respect to z axis in 2nd plane
h3=1//miller indices with respect to x axis in 3rd plane
k3=1//miller indices with respect to y axis in 3rd plane
l3=1//miller indices with respect to z axis in 3rd plane

//CALCULATION
x1=(sqrt(h1^2+k1^2+l1^2))
d100=(a/x1)//inter planar spacing distance in 1st plane in m
x2=sqrt(h2^2+k2^2+l2^2)
d110=(a/(x2))//inter planar spacing distance in 2nd plane in m
x3=(sqrt(h3^2+k3^2+l3^2))
d111=(a/x3)//inter planar spacing distance in 3rd plane in m

//OUTPUT
printf('The inter planar spacing distance in 1st plane is %i m \n The inter planar spacing distance in 2nd plane is %3.4f m \nThe inter planar spacing distance in 3rd plane is %3.3fm \n Ratio of interplanar distance of three planes is d100:d110:d111=%i:%3.3f:%3.3f',(1/x1),(1/x2),(1/x3),d100,d110,d111)
