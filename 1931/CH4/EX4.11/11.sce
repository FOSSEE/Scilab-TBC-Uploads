clc
clear
//INPUT DATA
t=30*10^-6//thickness of wave plate in m
Ro=1.55//Refractive index of wave plate for o ray
Re=1.54//Refractive index of wave plate for e ray

//CALCULATION
w=(2*t*(Ro-Re))/10^-9//wavelength for which it can act as a half wave plate in m *10^-9

//OUTPUT
printf('The wavelength for which it can act as a half wave plate is %i *10^-9.m',w)
