//Ex:8.8
clc;
clear;
close;
Eg=1.43;// bandgap energy in eV
dy=0.15*10^-9;
c=3*10^8;// speed of light in m/s
y=1.24/Eg;// in um
y1=y*10^-6;// wavelength of optical emission in m
df=(c*dy)/(y1^2);// the line width in Hz
Df=df/10^9;// the line width in GHz
printf("The wavelength of optical emission  =%f um", y);
printf("\n The frequency separation of the modes =%d GHz", Df);