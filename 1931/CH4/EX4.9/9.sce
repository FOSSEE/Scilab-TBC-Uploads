clc
clear
//INPUT DATA
w=5*10^-7//wavelength in m
Re=1.5573//Refractive index for e ray when the emergent beam will be plane polarised
Ro=1.5442//Refractive index for o ray when the emergent beam will be plane polarised

//CALCULATION
t=((w/(4*(Re-Ro))))/10^-6//least thickness of a plate in m *10^-6

//OUTPUT
printf('The least thickness of a plate when the emergent beam will be plane polarised is %3.2f *10^-6.m',t)
