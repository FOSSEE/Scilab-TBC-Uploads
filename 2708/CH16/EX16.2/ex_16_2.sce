//Example 16.2 //Energy of Neutrons  
clc;
clear;
//given data :
m=1.674D-27;// mass of neutron in kg
h=6.60D-34;// plank's constant in joules-sec
lamda=1D-10;// de-broglie wavelength in m
E=h^2/(2*m*lamda^2);// energy of neutrons in joules
E=E/1.6D-19;// to convert in eV
disp(E,"energy of neutons in eV")
