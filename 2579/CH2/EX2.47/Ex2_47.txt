//Ex:2.47
clc;
clear;
close;
l=1.2/100;// length in m
Im=2.8;// peak current in Amp
f=1*10^9;// frequency in Hz
c=3*10^8;// the speed of light in m/s
y=c/f;// wavelength in m
x=90;// angle in degree
x1=x*%pi/180;// angle in radian
r=10;// in m
n=120*%pi;// efficiency
Emax=(n*Im*l*sin(x1))/(2*r*y);// max radiated electric field in V/m^2
Pmax=Emax^2/n;// max power density in W/m^2
printf("The max radiated electric field = %f V/m", Emax);
printf("\n The max power density = %f W/m", Pmax);