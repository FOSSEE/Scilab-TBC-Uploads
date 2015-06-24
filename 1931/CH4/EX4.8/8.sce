clc
clear
//INPUT DATA
w=6000*10^-10//wavelength in m
Re=1.54//Refractive index of double refracting crystal for e ray
Ro=1.65//Refractive index of double refracting crystal for o ray

//CALCULATION
t=((w/(2*(Ro-Re))))/10^-6//thickness of a double refracting crystal required  at w/2 in m *10^-6

//OUTPUT
printf('The thickness of a double refracting crystal required at w/2 is %3.3f *10^-6.m',t)
