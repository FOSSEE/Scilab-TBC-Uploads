clc
clear
//INPUT DATA
n=200//number of fringes cross the field of view
d=0.0589*10^-3//distance of mirror displaced in m

//CALCULATION
w=((2*d)/n)/10^-7//wavelength of the monochromatic source used in m *10^-7

//OUTPUT
printf('The wavelength of the monochromatic source used is %3.2f *10^-7.in m',w)
