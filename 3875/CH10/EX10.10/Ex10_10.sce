clc;
clear;
W=2.3*1.6*10^-19 //Energy required to remove electron in eV
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s

//calculation
lambda_0=(h*c)/W
printf("\nSince the threshold wavelength is %1.3e,wavelength 680nm is not capable of showing photoelectric effect as threshold wavelength is the longest wavelength",lambda_0)
//The answer provided in the textbook is wrong.
