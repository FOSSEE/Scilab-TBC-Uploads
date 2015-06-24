clc
clear
//Input data
x=2//Lattice plane cut intercepts of length 2a
y=3//Lattice plane cut intercepts of length 3b
z=4//Lattice plane cut intercepts of length 4c

//Calculations
x1=1/x//Inverse of coefficients
y1=1/y//Inverse of coefficients
z1=1/z//Inverse of coefficients
LCM=12//L.C.M of x,y,z
x2=(x1*LCM)//Multiplying the fractions by LCM
y2=(y1*LCM)//Multiplying the fractions by LCM
z2=(z1*LCM)//Multiplying the fractions by LCM

//Output
printf('The miller indices of the plane is (%i %i %i)',x2,y2,z2)
