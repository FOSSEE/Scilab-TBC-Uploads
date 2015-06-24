clc
clear
//Input data
l=1*10^-6//Wavelength of light used in m
n1=1.45//Refractive index of the core
n2=1.448//Refractive index of the cladding
d=6*10^-6//Diamter of the core in m

//Calculations
NA=sqrt(n1^2-n2^2)//Numerical aperture
N=4.9*(d*NA/l)^2//Number of modes propagating through the fibre

//Output
printf('The number of modes that can be allowed through the fibre is %i. \n It is a single-mode fibre',N)
