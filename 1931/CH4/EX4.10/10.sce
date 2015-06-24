clc
clear
//INPUT DATA
w=5893*10^-10//wavelength of sodium light in m
Ro=1.658//Refractive index of calcite for o ray
Re=1.486//Refractive index of calcite for e ray

//CALCULATION
t=((w/(2*(Ro-Re))))/10^-7//thickness of the quarter wave plate for calcite in m *10^-7

//OUTPUT
printf('The thickness of the quarter wave plate for calcite is %3.3f *10^-7.m',t)
//Answer given in the book is wrong
