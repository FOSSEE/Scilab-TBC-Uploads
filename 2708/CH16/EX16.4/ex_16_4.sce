//Example 16.4 //de-broglie wavelength of neutrons 
clc;
clear;
//given data :
k=1.38D-23;// Boltzmann's Constant in joules per K
T=27;// temperature in degree
m=1.67D-27;// mass of neutron in kg
h=6.62D-34;// plank's constant in joules-sec
T=T+273;// to convert in K
lamda=h/sqrt(2*m*k*T);// De-broglie Wavelength in m
disp(lamda,"De-broglie Wavelength in m")
