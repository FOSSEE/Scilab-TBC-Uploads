//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.3
//calculation of the wavelength of light in the water 

//given data
lambdan=589//wavelength(in nm) of light in vacuum
mu=1.33//refractive index of water

//calculation
lambda=lambdan/mu//definition of the refractive index

printf('the wavelength of light in the water is %d nm',round(lambda))
