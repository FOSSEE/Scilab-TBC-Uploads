//ques-19.1
//Calculating de Broglie wavelength of alpha particles
clc
E=100;//energy (in Mev)
h=6.626*10^-27;//erg sec
c=3*10^8;//speed of light (in m/s)
w=(h*c)/(E*1.602*10^-6);
printf("The wavelength of alpha particles is %.7f nm.",w*10^9);
