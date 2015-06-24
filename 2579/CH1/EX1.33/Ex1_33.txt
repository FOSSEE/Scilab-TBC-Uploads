//Ex:1.33
clc;
clear;
close;
f=20*10^6;// frequency in Hz
P=10;// poynting vector in W/m^2
u=4;// relative mobility
Er=5;// relative permeability
c=3*10^8;// the speed of light= 1/sqrt(uo*Eo)
V=c/sqrt(u*Er);// the velocity of propagation in m/s
y=V/f;// wavelength in m
E=sqrt(P*120*%pi*sqrt(4/5));// electric field in V/m
Erms=sqrt(E^2/sqrt(2));// rms electric field
E=sqrt(2)*Erms;// electric field
n=E^2/P;// impedance of the medium in ohm
printf("The velocity of propagation = %f*10^8 m/s", V/10^8);
printf("\n The wavelength = %f m", y);
printf("\n The impedance of the medium = %f ohm", n);
printf("\n The rms electric field = %f V/m", Erms);