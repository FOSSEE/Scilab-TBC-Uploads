clc
clear
//INPUT DATA
W=0.1*10^-9//wavelength of photon in m
h=6.625*10^-34// Planck's constant in m^2 Kg /sec
c=3*10^8//velocity of light in m/s
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
E=((h*c)/(W*e))//energy of photon in eV
P=(h/W)/10^-24//momentum of the photon in Kgms^-1

//OUTPUT
printf('The energy of photon is %3.1f eV \n The momentum of the photon is %3.2f *10^-24.Kgms^-1',E,P)
