//Example No. 4.5.1
clc;
clear;
close;
format('v',6);
f=500;//MHz(Operating Frequency)
Do=1.643;//for half wave dipole
c=3*10^8;//m/s////Speed of light
lambda=c/(f*10^6);//m(Wavelength)
Aem=lambda^2/(4*%pi)*Do;//m²(Effective area)
disp(Aem,"Effective area in m² : ");
