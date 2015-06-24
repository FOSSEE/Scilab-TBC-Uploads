//Ex:2.42
clc;
clear;
close;
f=1.2*10^9;// freqyency in Hz
c=3*10^8;// the speed of light in m/s
y=c/f;// wavelength in m
D=1.5;// directivity
Ae=(D*y^2)/(4*%pi);// effective aperture area
Pd=2*10^-3;// power density in W/m^2
Pr=Pd*Ae;// power received in Watts
printf("The power received = %f*10^-6 Watts", Pr*10^6);