clc
clear
//INPUT DATA
n1=1.54//refractive index of optical fibre core
n2=1.5//refractive index of cladding

//CALCULATION
NA=sqrt((n1)^2-(n2)^2)//numerical aperture

//OUTPUT
printf('The numerical aperture is %3.4f',NA)
