clc
clear
//INPUT DATA
w=5893*10^-10//wavelength of sodium light in m
Re=1.5532//Refractive index of quartz for e ray
Ro=1.5332//Refractive index of quartz for o ray

//CALCULATION
t=((w/(4*(Re-Ro))))/10^-6//thickness of a quarter wave plate of quartz for sodium light in m *10^-6

//OUTPUT
printf('The thickness of a quarter wave plate of quartz for sodium light is %3.4f *10^-6.m',t)
