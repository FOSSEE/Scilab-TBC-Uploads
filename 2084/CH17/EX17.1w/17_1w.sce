//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.1w
//calculation of the limits of wavelengths in the water

//given data
lambda01=400//mimimum wavelength(in nm) of the light used
lambda02=700//maximum wavelength(in nm) of the light used
mu=1.33//refractive index of water

//calculation
lambda1=lambda01/mu//definition of the refractive index
lambda2=lambda02/mu//definition of the refractive index

printf('the limits of wavelengths in the water are %d nm and %d nm',lambda1,lambda2)
