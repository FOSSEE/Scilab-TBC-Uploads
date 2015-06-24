clc
clear
//INPUT DATA
h=1//miller indices with respect to x axis
k=1//miller indices with respect to y axis
l=0//miller indices with respect to z axis
d=2.86*10^-10//the distance between miller indices in m

//CALCULATION
a=(d*(sqrt(h^2+k^2+l^2)))/10^-10//The lattice constant in m *10^-10

//OUTPUT
printf('The lattice constant is %3.3f*10^-10 m',a)
