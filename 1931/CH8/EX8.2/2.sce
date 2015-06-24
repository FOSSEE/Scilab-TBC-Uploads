clc
clear
//INPUT DATA
w=5893*10^-10//wavelength of emitted light in m
e=100//total energy emitted per sec
h=6.625*10^-34// Planck's constant in m^2 Kg /sec
c=3*10^8//velocity of light m/s

//CALCULATION
E=((h*c)/w)//energy of one photon in J
N=(e/E)/10^20//The total numberof photons emitted in sec

//OUTPUT
printf('The total number of photons emitted per second is %3.3f *10^20 per sec',N)
