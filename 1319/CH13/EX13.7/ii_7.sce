// To determine force between single phase bus bars

clc;
clear;

eload=10^7;
voltage=15*(10^3);

mo=4*%pi*(10^-7);

l=1;
r=0.3;

//Normally

I=eload/voltage;
F=mo*I*I*l/(2*%pi*r);

//Short Circuit

Isc=10*I;
Fsc=mo*Isc*Isc*l/(2*%pi*r);

disp('N',F,'i) Force per metre under normal condition =')
disp('N',Fsc,'ii) Force per metre under short circuit condition =')

