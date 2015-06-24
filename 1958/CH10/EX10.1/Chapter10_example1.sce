clc
clear
//Input data
D=1//Distance of screen from the slit in m
w=6000//Wavelength in Angstrom
w1=0.6//Slit width in mm

//Calculations
x=((2*D*w*10^-10)/(w1*10^-3))*1000//Width of central band in mm

//Output
printf('Width of central band is %i mm',x)
