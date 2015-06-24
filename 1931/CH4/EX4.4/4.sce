clc
clear
//INPUT DATA
x=1.55//refractive index of transparent film of glass 
w=480*10^-9//wavelength of light in m
n=450//number of fringes to sweep across the field

//CALCULATION
t=((n*w)/(2*(x-1)))/10^-4//thickness of the film in m *10^-4

//OUTPUT
printf('The thickness of the film is %3.4f *10^-4.m',t)
