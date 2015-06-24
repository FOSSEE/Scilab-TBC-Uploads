//Example No. 4.9.5
clc;
clear;
close;
format('v',6);
L=1;//m(Length of element)
f=10;//MHz(Operating frequency)
c=3*10^8;//m/s////Speed of light
lambda=c/(f*10^6);//m(Wavelength)
Rr=80*%pi^2*(L/lambda)^2;//Ω(Radiation resistance)
disp(Rr,"Radiation resistance in Ω : ");
