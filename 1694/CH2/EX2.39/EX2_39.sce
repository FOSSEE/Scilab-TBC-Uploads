clear;
clc;
printf("\nEx2.39\n");
//page no.-86
//given
E=1.02*10^6;...............//energy in eV
theta=90;................//angle in degrees
h=6.6*10^-34;..........//planck's constant in J-sec
m=9.1*10^-31;.........//mass of electron 
c=3*10^8;..............//speed of light in m/s
e=1.6*10^-19;..........//charge
//acc. to compton exp.,_lambda-lambda=(h*(1-cosd(theta)))/m*c

del_lambda=((h*(1-cosd(theta)))/(m*c)).........//change in wavelength in m

del_nu=c/del_lambda................//changein frequency of photon

del_E=h*del_nu/e....................//change in energy of photon in eV

Eo=E-del_E.......................//energy of photon after interaction in eV

printf("\nEnergy of photon after interaction is 0.51 Mev\n");
