clc
clear
//INPUT DATA
z=1.75*10^-40//electronic polarisability in Fm^2
d=1.8*10^3//density of argon atom in Kg/m^3
Z=39.95//atomic weight of argon
NA=6.025*10^26//Avagadro number in mole^-1
ro=8.85*10^-12//permittivity of free space

//CALCULATION
N=((NA*d)/Z)//The number of atoms/unit volume in atoms/m^3 
rp=(((N*z)/ro)+1)//The static dielectric constant of solid argon

//OUTPUT
printf('The static dielectric constant of solid argon is %3.5f',rp)
