//Ex:5.51
clc;
clear;
close;
f=4*10^9;// frequency in Hz
c=3*10^8;// speed of light in m/s
y=c/f;// wavelength in m
D=1.22;// in meter
A=(%pi*D*D)/4;// area in m^2
d=96*1000;// in m
Pr=(10^-3)*(10^(-90/10));// received power in watt
//the received power is given by
//Pr=Pt*Gt*Gr*(y/4*%pi*d)
//antennas are symmetrical, Gt=Gr=G
//Pr/Pt=G^2*(y/4*%pi*d)^2
// =A^2/(y*d)^2
// then
//Pt=Pr*(y*d/A)^2
Pt=Pr*(y*d/A)^2;// the transmitted power in watts
printf("the transmitted power = %f micro watt", Pt*10^6);