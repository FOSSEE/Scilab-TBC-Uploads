clc
clear
//INPUT DATA
w=546.1*10^-9//wavelength of light in m
Re=1.592//Refractive index of mica for e ray
Ro=1.586//Refractive index of mica for o ray

//CALCULATION
t=((w/(2*(Re-Ro))))/10^-5//thickness of a mica sheet in m *10^-5

//OUTPUT
printf('The thickness of a mica sheet required for making a half wave plate for a light of wavelength w is %3.4f *10^-5.m',t)
