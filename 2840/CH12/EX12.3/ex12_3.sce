clc;
clear all;
H0=0.0306;//given constant characteristic of lead material
Tc=3.7;//given tempareture in kelvin
T=2;//given tempareture in kelvin
x=(T/Tc)*(T/Tc);
Hc=H0*(1-x);//value of magnetic field at 2K temp
disp('T',Hc,'value of magnetic field at 2K temp=');
