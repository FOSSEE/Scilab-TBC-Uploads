clc
clear
//Input data
a=4.12*10^-10//Lattice constant in m
p1=[1,1,1]//Miller indices of the plane 1
p2=[1,1,2]//Miller indices of the plane 2
p3=[1,2,3]//Miller indices of the plane 3

//Calculations
d11=(a/sqrt(p1(1)^2+p1(2)^2+p1(3)^2))/10^-10//The lattice spacing for the plane in m*10^-10
d12=(a/sqrt(p2(1)^2+p2(2)^2+p2(3)^2))/10^-10//The lattice spacing for the plane in m*10^-10
d13=(a/sqrt(p3(1)^2+p3(2)^2+p3(3)^2))/10^-10//The lattice spacing for the plane in m*10^-10

//Output
printf('The lattice spacing for the planes (%i %i %i) is %3.4f*10^-10 m \n The lattice spacing for the planes (%i %i %i) is %3.4f*10^-10 m \n The lattice spacing for the planes (%i %i %i) is %3.4f*10^-10 m',p1(1),p1(2),p1(3),d11,p2(1),p2(2),p2(3),d12,p3(1),p3(2),p3(3),d13)
