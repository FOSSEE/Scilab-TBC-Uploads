clc
clear
//INPUT DATA
h1=1//miller indices with respect to x axis in 1st plane
k1=0//miller indices with respect to y axis in 1st plane
l1=0//miller indices with respect to z axis in 1st plane
h2=1//miller indices with respect to x axis in 2nd plane
k2=1//miller indices with respect to y axis in 2nd plane
l2=0//miller indices with respect to z axis in 2nd plane
h3=1//miller indices with respect to x axis in 3rd plane
k3=1//miller indices with respect to y axis in 3rd plane
l3=1//miller indices with respect to z axis in 3rd plane
a=1//The lattice constant in a in a simple cubic lattice in m

//CALCULATION
d100=(a/(sqrt(h1^2+k1^2+l1^2)))//inter planar spacing distance in 1st plane in m
d110=(a/(sqrt(h2^2+k2^2+l2^2)))//inter planar spacing distance in 2nd plane in m
d111=(a/(sqrt(h3^2+k3^2+l3^2)))//inter planar spacing distance in 3rd plane in m

//OUTPUT
printf('The ratio of interplanar distance between successive lattice planes in a simple cubic lattice is d100:d110:d111=%i:%3.3f:%3.3f',d100,d110,d111)
