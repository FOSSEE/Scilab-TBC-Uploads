clc
clear
//Input data
d=0.5//Diameter of the ring in cm
n=4//number of bands
w=5893//Wavelength of light in Angstrom
q=30//Angle at which light enters in degrees

//Calculations
R=((d^2*cosd(q))/(2*(2*n+1)*w*10^-8))//Radius of curvature of lens in cm

//Output
printf('Radius of curvature of lens is %3.1f cm',R)
