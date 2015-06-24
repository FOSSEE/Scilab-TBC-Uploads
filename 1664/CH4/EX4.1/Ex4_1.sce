

//Example No 133.
//Page No 4.1.
//To find change in wavelength.
clc;clear;
h = 6.63*10^(-34);//Planck's constant -[J-s].
m0 = 9.1*10^(-31);//mass of electron -[kg].
c = 3*10^(8);//Velocity of ligth -[m/s].
cosq = cosd(135);//Angle of scattering -[degree].
delW = (h/(m0*c))*(1-cosq);//change in wavelength.
printf("\nThe change in wavelength is %3.3e m",delW);
