clc
clear
//INPUT DATA
h=3//miller indices with respect to x axis
k=1//miller indices with respect to y axis
l=1//miller indices with respect to z axis
a=2.109*10^-10//lattice constant of plane in a simple cubic lattice in m

//CALCULATION
d=(a/(sqrt(h^2+k^2+l^2)))/10^-11//The interplanar distance in m *10^-11

//OUTPUT
printf('The interplanar distance is %3.3f*10^-11 m',d)
