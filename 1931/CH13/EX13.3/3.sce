clc
clear
//INPUT DATA
d=9.8*10^26//density of hydrogen gas in atoms/m^3
r=0.50*10^-10//radius of the hydrogen atom in m
ro=8.85*10^-12//permittivity of free space

//CALCULATION
z=(4*3.14*ro*r*r*r)/10^-41//electronic polarisability in Fm^2
rp=(((d*z*10^-41)/ro)+1)//The relative permittivity in hydrogen gas

//OUTPUT
printf('The electronic polarisability is %3.3f*10^-41 Fm^2 \n The relative permittivity in hydrogen gas is %3.4f',z,rp)
