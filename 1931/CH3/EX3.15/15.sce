clc
clear
//INPUT DATA
a=4.12//the lattice constant of a simple cubic system in armstrong
h1=3//miller indices with respect to x axis
k1=2//miller indices with respect to y axis
l1=1//miller indices with respect to z axis

//CALCULATION
d=(a/(sqrt(h1^2+k1^2+l1^2)))//inter planar d spacing distance in armstrong

//OUTPUT
printf('The inter planar d-spacing distance is %3.4f armstrong',d)
