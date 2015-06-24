clc
clear
//INPUT DATA
n=125//number of fingers cross the field of view
d=0.04*10^-3//distance of one of mirror moved in m

//CALCULATION
w=((2*d)/n)/10^-9//wavelength of light used in m

//OUTPUT
printf('The wavelength of light used is %i *10^-9.m',w)
