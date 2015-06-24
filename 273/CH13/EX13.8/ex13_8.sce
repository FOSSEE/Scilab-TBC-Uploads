clc;clear;
//Example 13.8
//calculation of energy states of an electron and grain of dust and comparing

//1)given values
L1=10*10^-10;//width of potential well in which e is confined
L2=.1*10^-3;//width of potential well in which grain of dust is confined
h=6.626*10^-34;//Planck's constant in Js
v1=10^6;//velocity of garin of dust in m/s
m1=9.1*10^-31;//mass of e in kg
m2=10^-9;//mass of grain in kg

//1)calculation

Ee1=1^2*h^2/(8*m1*L1^2);//first energy state of electron
disp(Ee1,'first energy state of e is ');
Ee2=2^2*h^2/(8*m1*L1^2);//second energy state of electron
disp(Ee2,'second energy state of e is ');
Ee3=3^2*h^2/(8*m1*L1^2);//third energy state of electron
disp(Ee3,'third energy state of e is ');
disp('Energy levels of an electron in an infinite potential well are quantised and the energy difference between the successive levels is quite large.Electron cannot jump from one level to other on strength of thermal energy.Hence quantization of energy plays a significant role in case of electron')

Eg1=1^2*h^2/(8*m2*L2^2);//first energy state of grain of dust
disp(Eg1,'first energy state of grain of dust is ');
Eg2=2^2*h^2/(8*m2*L2^2);//second energy state of grain of dust
disp(Eg2,'second energy state of grain of dust is ');
Eg3=3^2*h^2/(8*m2*L2^2);//third energy state of grain of dust
disp(Eg3,'third energy state of  grain of dust is ');
KE=m2*v1^2/2;//kinetic energy of grain of dust;
disp(KE,'kinetic energy of grain of dust is');
disp('The energy levels of a grain of dust are so near to each other that they constitute a continuum.These energy levels are far smaller than the kinetic energy possessed by the grain of dust.It can move through all these energy levels without an external supply of energy.Thus quantization of energy levels is not at all significant in case of macroscopic bodies.')