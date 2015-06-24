clc
clear
//Input data
r=1.4//Refractive index of the material
w=5893//Wavelength of yellow light in Angstrom
n=10//Number of bands
w1=0.009//Width of band in m

//Calculations
b=asind((w*10^-8)/(2*r*n*w1))//Angle of wedge in degrees

//Output
printf('Angle of wedge is %3.4f degrees',b)
