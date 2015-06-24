clc
clear
//INPUT DATA
a=4*10^-7//lattice constant of the crystal in mm
h1=1//miller indices with respect to x axis in 1st plane
k1=0//miller indices with respect to y axis in 1st plane
l1=0//miller indices with respect to z axis in 1st plane

//CALCULATION
n=4*(1/4)//Number of atoms contained in a plane per unit cell
A=a*a//Area of the plane in mm^2
d=(n/A)/10^12//The planar atomic density in atoms/mm^2

//OUTPUT
printf('The planar atomic density is %3.2f*10^12 atoms/mm^2',d)
