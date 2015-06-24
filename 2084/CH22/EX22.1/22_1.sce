//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 22.1
//calculation of the luminous flux

//given data
lambda=600//wavelength(in nm) given
P=10//wattage(in W) of source
rellum=.6//relative luminosity

//calculation
//1 W source of 555 nm = 685 lumen
lumflux=P*685*rellum//luminous flux

printf('the luminous flux is %d lumen',lumflux)
