clc
clear
//INPUT DATA
angle=180//x ray carbon scattered at a angle in degrees
h=6.625*10^-34//Planck's constant in m^2 Kg /sec
c=3*10^8//velocity of light in m/s
m=9.11*10^-31//mass of electron in Kg
v=1.8*10^18//frequency of incident rays in s^-1

//CALCULATION
w=(c/v)//wavelength in m
tw=(h/(c*m))*(1-cosd(angle))//The change wavelength for Xray carbon in m
NW=(w+tw)/10^-10//The wavelength of X-rays carbon in Armstrong

//OUTPUT
printf('The wavelength of X-rays carbon is %3.2f Armstrong',NW)
