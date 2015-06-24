//Ex:4.46
clc;
clear;
close;
f=4*10^3;// frequency in MHz
y=300/f;// wavelength in m
w=10/100;// width in m
Ap=25;// power gain in dB
Ap1=10^(Ap/10);// power gain
h=(Ap1*y^2)/(4.5*w);// aperture height in m
printf("The aperture height in m = %f m", h);
printf("\n The aperture height in cm = %f cm", h*100);