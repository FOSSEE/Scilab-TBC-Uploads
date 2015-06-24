clc;
clear all;
H0=6.5*1e4;//given constant characteristic of lead material
Tc=7.18;//given temprature in kelvin
T=4.2;//given temprature in kelvin
//part a
x=(T/Tc)*(T/Tc);
Hc=H0*(1-x);//value of magnetic field at 4.2K temp
disp('A/M',Hc,'value of magnetic field at 4.2K temp=');
//part b
r=1e-3/2;//given radius
Ic=2*%pi*r*Hc;//critical current
disp('A',Ic,'critical current is=');
