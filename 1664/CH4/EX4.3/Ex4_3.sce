

//Example No.4.3.
//Page NO.135.
clc;clear;
h = 6.626*10^(-34);//Planck's constant.
mo = 9.1*10^(-31);//mass of electron.
c = 3*10^(8);//Velocity of ligth.
w = (1*1.6*10^(-19)*10^(6));//wavelength.
cosq = cosd(60);
delw = ((h/(mo*c))*(1-cosq));//Compton shift
delw = delw*10^(10);
printf("\n1)The Comptons shift = %.3f A",delw);
E = ((h*c)/w);//energy of the incident photon.
W = (delw+E);//Wavelength of the scattered photon.
W = (0.012)+(1.242);
printf("\n3)The wavelength of the scattered photon = %.3f A",W);
