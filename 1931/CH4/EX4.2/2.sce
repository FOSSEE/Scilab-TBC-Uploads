clc
clear
//INPUT DATA
Ri=1.5//refractive index of thin film of glass
n=30//number of fringes of sodium light is observed across the field of view
t=0.018*10^-3//thickness of glass film in m

//CALCULATION
w=((2*(Ri-1)*t)/n)/10^-7//wavelength of the light used in m *10^-7

//OUTPUT
printf('The wavelength of light used is %i *10^-7.m',w)
