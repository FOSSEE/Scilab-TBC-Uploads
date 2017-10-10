clc;
clear;
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s
m=9.1*10^-31 //mass in kg
lambda_1=100*10^-12 //wavelength in m
e=1.6*10^-19 //charge in C


//calculation
delta_lambda=(h/(m*c)) //wavelength in m
mprintf("The compton shift is = %1.2e m\n",delta_lambda)

lambda_0=lambda_1-delta_lambda //wavelength of the scattered photon in m 
delta_E=(h*c*delta_lambda)/(lambda_1*lambda_0)
mprintf("\nThe kinetic energy imparted to the electron is = %1.2e J or %1.2f eV",delta_E,delta_E/e)
//The answer provided in the textbook is wrong.
