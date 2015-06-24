//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.4
//calculation of the minimum thickness of the film

//given data
lambda=589//wavelength(in nm) of the light used
mu=1.25//refractive index of the material

//calculation
//for strong reflection......2*mu*d = lambda/2
d=lambda/(4*mu)//minimum thickness

printf('the minimum thickness of the film is %d nm',round(d))
