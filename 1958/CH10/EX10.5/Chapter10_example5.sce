clc
clear
//Input data
w=6400//Wave length of light in Angstrom
w1=0.3//Slit width in mm
d=110//Distance of screen from the slit in cm
n=3//order

//Calculations
x=((n*w*10^-10*(d/100))/(w1*10^-3))*1000//Distance between the centre of the central maximum and the third dark fringe in mm

//Output
printf('Distance between the centre of the central maximum and the third dark fringe is %3.2f mm',x)
