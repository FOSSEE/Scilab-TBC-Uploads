clc
clear
//INPUT DATA
w=1.55*10^-6//wavelength of light emission in m
h=6.625*10^-34// Planck's constant in m^2 Kg/sec
c=3*10^8//velocity of light in m/s
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
Eg=(h*c)/(w*e)//band gap in eV

//OUTPUT
printf('The band gap for lnp laser diode is %3.4f eV',Eg)
